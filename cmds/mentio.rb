module Bot
  module Mention
    extend Discordrb::Commands::CommandContainer

    $bot.mention do |event|

      event.send_embed do |e|
        e.description = "digite >help para ver a lista de comandos!"
        e.color = "FFFFF"
      end
    end
  end
end
