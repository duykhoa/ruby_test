require 'forwardable'

class Decorator
  extend Forwardable

  def self.decorate(obj)
    new(obj)
  end

  def initialize(obj)
    @obj = obj
  end
end

class Employee
  def initialize(base_salary)
    @base_salary = base_salary
  end

  attr_reader :base_salary
end

class BaseSalaryCalculatorDecorator < Decorator
  def calculate
    @obj.base_salary
  end

  def_delegators :@obj, :base_salary
end

class SalaryAfterIncomeTaxDecorator < Decorator
  def calculate
    (1 - tax_rate) * @obj.calculate
  end

  def tax_rate
    0.2
  end

  def_delegators :@obj, :base_salary
end

class SalaryWithBonusDecorator < Decorator
  def calculate
    @obj.calculate + bonus
  end

  def bonus
    @obj.base_salary >= 1700 ? 2 * @obj.base_salary : @obj.base_salary
  end

  def_delegators :@obj, :base_salary
end

employee = Employee.new(2000)

base_salary_decorator   = BaseSalaryCalculatorDecorator.decorate(employee)
salary_with_bonus       = SalaryWithBonusDecorator.decorate(base_salary_decorator)
salary_after_income_tax = SalaryAfterIncomeTaxDecorator.decorate(salary_with_bonus)

#puts base_salary_decorator.calculate
#puts salary_with_bonus.calculate
puts salary_after_income_tax.calculate
