module Bot
  module Invite
    extend Discordrb::Commands::CommandContainer

    command :invite do |event|
      event.send_embed do |e|
        e.title = "Me convide para seu servidor 😟"
        e.description = "- Carlão, melhor bot, 2022"
        e.url = "https://discord.com/oauth2/authorize?client_id=953438198929960991&scope=bot&permissions=8"
        e.color = "#FFF8A"
      end
    end
  end
end

