require "sinatra"

def alive
  get "/" do
      redirect "http://carlaoweb.herokuapp.com"
  end
end
