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
