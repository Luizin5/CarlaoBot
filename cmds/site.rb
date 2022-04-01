module Bot
  module Site
    extend Discordrb::Commands::CommandContainer
    command :site do |event|
      event.send_embed do |e|
        e.title = "#{event.user.name}##{event.user.id}"
        e.description = "https://carlaoweb.herokuapp.com/"
        e.color = "#FF007"
      end
    end
  end
end
