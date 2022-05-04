module Bot
  module Perguntar
    extend Discordrb::Commands::CommandContainer

    command :escolha do |event, *txt|
      txt = txt.join(' ')
      event.respond "<@#{event.user.id}> #{%w(sim não).sample}"
    end
  end
end
