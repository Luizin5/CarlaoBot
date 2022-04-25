module Bot
  module Clear
    extend Discordrb::Commands::CommandContainer

    command :clear, required_permissions:[:manage_permissions] do |event, num|
      event.channel.prune num.to_i
      event.send_embed do |e|
        e.description = "#{num} Mensagens foram apagadas!"
        e.color = "077A"
      end
    end
  end
end
