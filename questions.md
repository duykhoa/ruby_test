1. Irb stands for
    1. Internation Ruby Book
    1. Institutional Review Board
    1. Irregular Ruby
    1. Interactive Rbby

1. What is equivalent to this statement: `1 + 1 == 2`
    1. `(1 + 1).eql(2)?`
    1. `1.+(1).eql?(2)`
    1. `(1.plus 1).eql?(2)`
    1. `1.+ 1.eql?(2)`

1. To print 10 times the word "Hello World" to the standard output, which is the best way to do in Ruby

    1.
        ```ruby
          puts "Hello World"
          puts "Hello World"
          puts "Hello World"
          puts "Hello World"
          puts "Hello World"
          puts "Hello World"
          puts "Hello World"
          puts "Hello World"
          puts "Hello World"
          puts "Hello World"
        ```
    1.
        ```ruby
          for i in 0..10
            puts "Hello World"
          end
        ```

    1.
        ```ruby
          10.times { |_| puts "Hello World" }
        ```
    1.
        ```ruby
          def print_hello_world(times = 10)
            if times > 0
              puts "Hello World"

              print_hello_world(times - 1)
            end
          end

          print_hello_world
        ```

1. What is the different of `print` and `puts` in Ruby
    1. `print` only accepts string
    1. `puts` doesn't support string format like `print`
    1. `puts` adds a new line at the end
    1. `puts` accepts a list of object, while print only accepts 1 string object

1. How to create a new instance `student` from `Student` class
    ```ruby
      class Student
        def initialize(name)
        end
      end
    ```

    1. `student = Student.new`
    1. `student = new Student(name = "Bob")`
    1. `student = Student.new("Bob")`
    1. `student = Student.new(name = "Bob")`


1. When define class `Book` in Ruby, to prevent developer modify the `isbn` field during run time, but allow developer
   to read the value, what is the Ruby way of doing it?

    1.
        ```ruby
          attr_accessor :isbn
        ```
    1.
        ```ruby
          attr_accessor :isbn
          attr_writter :isbn
        ```
    1.
        ```ruby
          attr_accessor :isbn
          attr_reader :isbn
        ```
    1.
        ```ruby
          attr_reader :isbn
        ```

1. A developer define the class Book like below

    ```ruby
    class Book
      attr_accessor :name
      attr_reader :isbn

      def initialize(name, isbn)
        @name = name
        @isbn = isbn
      end
    end
    ```

    Which statement is not correct?

    1. Both name and isbn is readable from outside
    1. Both name and isbn is writable from outside
    1. name is accessible (read + write), isbn is readonly from outside
    1. name is readable and writable, isbn is readonly from outside

1. Another developer define class User like below

    ```ruby
    class User
      def initialize(email, password)
        @email = email
        @password = password
      end

      attr_reader :email

      privatte

      attr_reader :password
    end
    ```

    1. both password and email is readable from outside
    1. only email is readable from outside, password is readable from inside
    1. the only way to access password variable from other methods is using @password
    1. password isn't allow to change

1. What is equivalent with `attr_accessor`

    1.
        ```ruby
          attr_writter :isbn
          attr_reader :isbn
        ```
    1.
        ```ruby
          attr_modifier :isbn
          attr_reader :isbn
        ```
    1.
        ```ruby
          attr_writer :isbn
          attr_reader :isbn
        ```
    1.
        ```ruby
          attr_writer, attr_reader :isbn
        ```
1. You are writing a Rectangle method to calculate Perimeter method. What is the best way to do it

    1.
        ```ruby
        class Rectangle
          def self.perimeter(length, width)
            (length + width) * 2
          end
        end
        ```
    1.
        ```ruby
        class Rectangle
          def self.perimeter(rectangle)
            (rectangle.length + rectangle.width) * 2
          end
        end
        ```
    1.
        ```ruby
        class Rectangle
          def perimeter(rectangle)
            (rectangle.length + rectangle.width) * 2
          end
        end
        ```
    1.
        ```ruby
        class Rectangle
          def perimeter
            (length + width) * 2
          end
        end
        ```

1. You are helping a friend to refactor a Ruby program, what will you suggest to change

    ```ruby
      class Circle
        def initialize
        end

        def get_diameter
          @diameter
        end

        def set_diameter=(value)
          @diameter
        end
      end

      c = Circle.new
      c.set_diametter = 7
      puts c.diameter
    ```

    1. Change the constructor signature to accept diameter value
      ```
        def initialize(diameter)
      ```

    1. Remove get and set prefix in method names, this isn't a Ruby way of adding getter and setter
    1. Replace the get_diameter and set_diametter by `attr_accessor :diameter`
    1. All of those above are relevant

1. Which statement below is correct

    1. A class method provides functionality to a class itself, while an instance method provides functionality to one instance of a class.
    1. A class method can be accessed from the class level only
    1. A class method can call other class methods and can't call instance method
    1. A class method can access class variables, an instance method can't access class variables

1. Which way isn't correct to add a class method

    1.
      ```rb
        class A
          def self.class_method
          end
        end
      ```

    1.
      ```rb
        class A
          class << self
            def class_method
            end
          end
        end
      ```

    1.
      ```rb
        module ClassMethods
          def class_method
          end
        end

        class A
          extend ClassMethods
        end
      ```

    1.
      ```rb
        class A
        end

        def A.class_method;end
      ```

    1.
      ```rb
        class A
        end

        class << A
          def self.class_method;end
        end
      ```

    1.
      ```rb
        class A
        end

        class << A
          def class_method;end
        end
      ```

1. You are writing a program in Ruby. In this program, you have to provide the ability to create dog and cat. Dog and
   cat have 2 share routines includes eat and walk. You decide to add an abstract class Pet to handle the common logic.
   Which concept of OOP you are using in this design?

   1. Composite
   1. Inheritance
   1. Polymophism
   1. Encapsulation

1. Given the code

    ```ruby
    class Shape
      def initialize(length, width)
        @length = length
        @width = width
      end

      def area(length, width)
        (length + width) * 2
      end

      private

      attr_reader :length, :height
    end

    class Rectangle < Shape
    end

    class Square < Shape
    end
    ```

    What is the problem with this code?

    1. There is no problem with the code
    1. The `area` method isn't available for a `Rectangle` instance.
    1. Square may not need to separate the concept of length and width, there may be a wrong abstraction introduced.
    1. An instance of Rectangle or Square isn't able to access length and height

1. Given the code

    ```ruby
    class A
      def initialize(value)
        @value = value
      end

      def increase_one
        @value += 1
      end

      private

      attr_accessor :value
    end


    class B < A
      def increase_two
        increase_one
        @value += 1
      end
    end

    # Usages

    b = B.new(5)
    puts b.increase_one

    puts b.increase_two
    puts b.value
    ```

    What is the output of this program consequently?

    1. 
        ```
        6
        8
        8
        ```

    1.  
        ```
        6
        8
        NoMethodError (private method `value' called for ...
        ```

    1. 
        ```
        6
        NoMethodError (private method `value' called for ...
        ```
    1. 
        ```
        NoMethodError (private method `value' called for ...
        ```

1.  To put a method into private scope, which is the way (multiple answers)

    1.
       ```ruby
       private

       def method_1; end
       def method_2; end
       ```
    1.
       ```ruby
       def method_1; end
       def method_2; end

       private_method :method_1, :method_2
       ```

    1. 
       ```ruby
       def method_1; end
       def method_2; end

       private :method_1, :method_2
       ```
    1.
       ```ruby
       protected

       def method_1; end
       def method_2; end
       ```

1. What is composition over inheritance design approach

    1. A flatter structure
    1. Inheritance adds extra behavior from the parent class
    1. With inheritance, you may end up with a Circle-Ellipse problem
    1. It is easier to create a new class by including behaviors from multiple mixins.

1. Given an array `numbers = [1,2,3,4,5,6,7]`, we want to remove all odd value from the array, hence it only remains
   [2,4,6]. A student write this code in Ruby

    ```rb
    numbers = [1,2,3,4,5,6,7]
    array_size = numbers.size

    i = 0

    while i < array_size do
       if numbers[i].odd?
         numbers.delete_at(i)
       end
       
       i += 1
    end
    ```

    Does the code work as expected?

    1. The code works as expected
    1. The code raises error during run time
    1. The code doesn't do anything
    1. The code remove extra elements

1. What is the output of the code below

    ```ruby
    str1 = "devil never even lived"

    str2 = str1.reverse.split.map { |w| w.reverse }.reverse.join(" ")

    puts str2
    ```
  
    1. devil never even lived
    1. d e v i l   n e v e r   e v e n   l i v e d
    1. devil neve reven lived
    1. ["devil", "never", "even", "lived"]

1. What is the most approriate solution with the `map` method in Enummerable

    **E.g.**: Instead of calling `input_array.map { |item| item * 2 }`, we can use the method with this following syntax: 
    `map2(input_array) { |item| item * 2 }`

    1.
      ```ruby
      def map2(input_array)
        result = []

        input_array.each do |input_item|
          output_item = yield item
        end

        result
      end
      ```

    1.
      ```ruby
      def map2(input_array)
        input_array.each do |input_item|
          yield item
        end
      end
      ```

    1.
      ```ruby
      def map2(input_array)
        result = []

        input_array.each do |input_item|
          result << yield item
        end

        result
      end
      ```

    1.
      ```ruby
      def map2(input_array)
        result = []

        input_array.each do |input_item|
          output_item = yield item

          if output_item
          result << output_item
          end
        end

        result
      end
      ```

1. Can we extend behavior of an existing class at run time in Ruby

    1. Yes, Ruby class is always open
    1. No, you must create a new subclass to do so
    1. No, you can't overide private and protected methods
    1. Yes, but own instances that created before changing the class doesn't get updated

1. What is the different between profiling and benchmarking?

    1. Both benchmarking and profiling refer to the same terms
    1. Benchmark evaluate the time the entire program (or method) take to complete the execution, Profiling provides a
       deep dive analysis report for each under unit's run time.
    1. Benchmarking is about to run the problem versus different machine and OS
    1. Profiling is a process to optimize the performance of the program by caching the problem into a profile.

1. Why do we need both benchmarking and profiling

    1. Benchmark provides an overall picture while profiling helps to identify the performance bottleneck.
    1. Without benchmarking, chance you are doing micro optimization.
    1. Benchmark allows you to test against the network timeout issue.
    1. Profiling provides a tool to measure the quality of the software

1. In your program, the code look like below:

    ```ruby
    class AtmAccount
      extend HistoryTracking

      attr_history :balance

      def initialize(balance)
        self.balance = balance
      end

      def withdraw(amount)
        self.balance = self.balance - amount
      end
    end
    ```

    The usage of this class is something like below:

    ```ruby
    account = AtmAccount.new(100)
    account.withdraw(10)
    account.withdraw(20)

    puts account.balance_history.inspect # => [100, 90, 70)

    ```

    What does HistoryTracking is?

    1. HistoryTracking is a method 
    1. HistoryTracking is a module
    1. HistoryTracking is a subclass
    1. HistoryTracking is a accessor

1. The same code with previous question

    ```ruby
    class AtmAccount
      extend HistoryTracking

      attr_history :balance

      def initialize(balance)
        self.balance = balance
      end

      def withdraw(amount)
        self.balance = self.balance - amount
      end
    end
    ```

    The usage of this class is something like below:

    ```ruby
    account = AtmAccount.new(100)
    account.withdraw(10)
    account.withdraw(20)

    puts account.balance_history.inspect # => [100, 90, 70)

    ```

    What should HistoryTracking does?

    1. It defines the balance_history method that tracks the amount changing
    1. It defines a balance_history and balance setter method
    1. It dynamically defines the balance_history method and balance setter method
    1. It dynamically defines the balance_history method, balance setter method, balance getter method to track value of
       balance in the attr_history method

1. As I have the HistoryTracking module defined in previous example, I want to make it reusable for different attributes
   in the AtmAmount, how should I do it?

   1. Add another attr_history line
   1. Add another attr_history attributes, e.g. attr_history :balance, :debit, :credit
   1. Copy the code of the History module to the class and rename the mothod accordingly
   1. It is impossible to track history of more than 1 attribute

1. What should be the signature of the `puts` method in Ruby

   1. `def puts(params = [])`
   1. `def puts(*params = [])`
   1. `def puts(*params)`
   1. `def puts(**params)`

1. Given a hash data

    ```json
    data = {
      students: [
        {
          id: 1,
          name: "John",
          score: 100,
          class_room: "2A"
        },
        {
          id: 2,
          name: "Celi",
          score: 80,
          class_room: "2A"
        },
        {
          id: 3,
          name: "Tram",
          score: 75,
          class_room: "2B"
        }
      ]
    }
    ```

    To get all the students having score greater or equal than 80, we can:

    1. 
      ```ruby  
      data[:students].select { |student| student[:score] >= 80 }
      ```

    1. 
      ```ruby  
      data.[:students].find { |student| student[:score] >= 80 }
      ```

    1. 
      ```ruby  
      data.[:students].detect { |student| student[:score] >= 80 }
      ```

    1. 
      ```ruby  
      data.[:students].map { |student| student[:score] >= 80 }
      ```

1. Given a hash data

    ```json
    data = {
      students: [
        {
          id: 1,
          name: "John",
          score: 100,
          class_room: "2A"
        },
        {
          id: 2,
          name: "Celi",
          score: 80,
          class_room: "2A"
        },
        {
          id: 3,
          name: "Tram",
          score: 75,
          class_room: "2B"
        }
      ]
    }
    ```

    To group students by class_room, we can do

    1. 
      ```ruby  
      data[:students].select { |student| student[:class_room] =~ '2B' }
      ```

    1. 
      ```ruby  
      data.[:students].sort_by { |student| student[:class_room] }
      ```

    1. 
      ```ruby  
      data.[:students].group_by { |student| student[:class_room] }
      ```

    1. 
      ```ruby  
      data.[:students].reduce({}) { |r, student| r[student[:class_room]] << student }
      ```

1. Why Hash access is more efficient than Array?

    1. It store value into heap size so it is faster than array
    1. It is wrong, Array is faster since it doesn't requires extra abstraction layer to store the value
    1. It use a hash function to compute index, also called as a hash code, into an array of buckets or slot, from which
       the disired value can be found faster
    1. It uses an external cache to store and index the value by key

1. What isn't a Ruby Template engine

    1. Erb
    1. Slim
    1. Haml
    1. Irb

1. Which one is the order of log level's severity?

    1.
        - DEBUG
        - INFO
        - ERROR
        - WARN
        - FATAL

    1.
        - DEBUG
        - INFO
        - WARN
        - FATAL
        - ERROR

    1.
        - DEBUG
        - INFO
        - WARN
        - ERROR
        - FATAL

    1.
        - INFO
        - WARN
        - DEBUG
        - ERROR
        - FATAL

1. `printf "%.5f" %[ 11.12 ]` outputs
    
    1. 11.12000
    1. 00011.12
    1.    11.12
    1. 11.00012

1. What describe the behavior of method `#freeze` correctly

    1. It is used in the concurrent programming
    1. It modifies the object to make it inaccessible to other classes
    1. It prevents further modification, there is noway to unfreeze a frozen object
    1. It prevents further modification, a frozen object can be unfreeze by calling `defrost` method

1. Which statement is correct about `#frozen_string_literal: true`?

    1. Enable frozen string literals in a Ruby file, make all the string immutable and reusable like symbol
    1. It makes all string in your program frozen and reuse the same string object to reduce memory consuming
    1. It is a Ruby comment and does no magic
    1. It treats symbol and string as the same object

1. Which statement is incorrect?

    1. `__FILE__` is a relative path to the filename contains the code being executed
    1. `Dir.glob("*.[a-z]{3,5}.rb")` lists all files that ends with **rb** extension
    1. To store run time arguments, Ruby use the **ARGV** constant
    1. `__FILE__` is a method that returns executed file, and `__dir__` is a keyword returns running path

1. What is the common light weight cooperative concurrency class in Ruby?
    
    1. Semaphore
    1. Fiber
    1. Mutex
    1. Process
    1. Thread

1. Consider this code below 

    ```
    a_proc = Proc.new { |i| puts "hello world #{i}" }

    5.times.each(&a_proc)
    ```

    What is the output

    1. 
        hello world 0
        hello world 1
        hello world 2
        hello world 3
        hello world 4
    1. 
        hello world 0 1 2 3 4 5
    1. 
        hello world #{i}
        hello world #{i}
        hello world #{i}
        hello world #{i}
        hello world #{i}

    1. Runtime Error, the program doesn't work

1. With below code

    ```ruby
     class PClass
       def self.inherited(subclass)
         self.children << subclass
       end

       def self.children
         @@children ||= []
       end
     end

     class C1 < PClass;end
     class C2 < PClass;end

     puts PClass.children
    ```

    What is the output?

   1. Runtime error
   1. [PClass, C1, C2]
   1. [C1, C2]
   1. []

1. What is the main difference of alias_method and adding new alias method explicitly? 

  1. The alias method doesn't add new object to the stacktrace
  1. Alias method renames the source method
  1. The syntax is shorter
  1. Alias method isn't supported by Ruby.

1. Consider the code below

   ```ruby 
   hash = Hash.new(0)

   hash[:foo] = 4
   hash[:foo] += 1

   hash[:bar] += 1
   ```

   What is the value of **hash** after running the code

   1. { :foo => 5 }
   1. { :foo => 5, :bar => nil }
   1. { :foo => 5, :bar => 1 }
   1. No method error

1. Below is the code of running a TCP server

    ```ruby
    require 'socket'
    server = TCPServer.new 3005

    loop do
      # Accept the connection
      socket = server.accept

      # Print the request, which ends in a blank line
      puts line = socket.readline until line == "\r\n"

      # Tell the browser we are an HTTP server
      socket.write "HTTP/1.1 200 OK\r\n"
      # Tell the browser the body is 52 bytes
      socket.write "Content-Length: 51\r\n"
      # Empty line to separate headers from body
      socket.write "\r\n"
      # Write the HTML that makes up the body
      socket.write "<html><body>"
      socket.write "<h1>Hello from Ruby!</h1>"
      socket.write "</body></html>\n"
      # Close the connection
      socket.close
    end
    ```

    What does the browser receive when visiting the server

    1. Hello
    1. Hello from Ruby!
    1. `<h1>Hello from Ruby!</h1>`
    1. `<html><body><h1>Hello from Ruby!</h1></body></html>`

1. Which statement about the error hierarchy isn't correct
    1. RuntimeError is a subclass of StandardError
    1. NotImplementedError isn't a subclass of StandardEror
    1. ArgumentError is a StandardEror
    1. Syntax Error is a subclass of StandardError

1. A program looks like below

    ```ruby
    class Order
      def initialize(discount)
        @discount = discount
      end

      #... more code

      def discount_value
        discount.rate * total
      end

      attr_reader :discount
    end
    ```

    The order may or may not have any discount, hence the code may fail when calling discount_value method.
    What is the proper way to handle the nil value checking?

    1. Use try `discount.try(:rate)`, it won't raise any error
    1. Use `discount&.rate`, it won't raise any error
    1. Use rescue `discount.rate rescue nil` to prevent error
    1. All are correct, but prefer to use NullObject pattern

1. If `Singleton` module is include in a class, this class can have maximum 1 object initialized.
  
    1. True
    1. False

1. Which statement is incorrect

    1. Ruby supports Monkey patching
    1. A monkey patch is a way for a program to extend or modify supporting system software locally (affecting only the running instance of the program). 
    1. Monkey patch is a testing framework
    1. The term monkey patch only refers to dynamic modifications of a class or module at runtime, motivated by the
       intent to patch existing third-party code as a workaround to a bug or feature which does not act as desired.
       Other forms of modifying classes at runtime have different names, based on their different intents.

1. What is Singleton Class (not confuse with Singleton pattern)
[Singleton class](https://dev.to/samuelfaure/explaining-ruby-s-singleton-class-eigenclass-to-confused-beginners-cep)

