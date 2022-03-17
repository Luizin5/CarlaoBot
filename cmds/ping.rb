module Bot
  module Ping
    extend Discordrb::Commands::CommandContainer

    command :ping do |event|
      event.send_embed do |e|
        e.title = "Pong! 🏓"
        e.timestamp = Time.now
      end
    end
  end
end
