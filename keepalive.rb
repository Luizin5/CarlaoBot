require "socket"
def alive
  t = Thread.new() {
    server = TCPServer.new 80
    loop do
      puts "Server Alive"
      client = server.accept
      client.puts "<script>window.location.href=\"http://carlaoweb.herokuapp.com\"</script>"
      client.close
    end
  }
end
