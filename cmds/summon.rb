module Bot
  module Summon
    extend Discordrb::Commands::CommandContainer


    command :summon do |event, forca, vida, *nome|

      nome = nome.join(' ')

      event.channel.send_embed do |e|
        e.title = "#{event.user.name}##{event.user.tag}"
        e.description = "invocou #{nome}\nforca: #{forca} vida: #{vida}"
        e.color = "#F007"
      end
    end
  end
end


