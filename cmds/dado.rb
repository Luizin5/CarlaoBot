module Bot
  module Dado
    extend Discordrb::Commands::CommandContainer

    command :dado do |event|
      event.respond "<@#{event.user.id}>, #{rand(0..6)}"
    end
  end
end

