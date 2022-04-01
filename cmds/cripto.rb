require "base64"

module Bot
  module Cripto
    extend Discordrb::Commands::CommandContainer

    include Base64

    def encode(a,*txt)
      txt = txt.join('')
      case a
      when "base64"
        return Base64.encode64 txt
      end
    end

    command :encode do |event, cripto, *text|
      text = text.join('')

      event.send_embed do |e|
        e.title = "#{event.user.name}##{event.user.tag}"
        
        e.description = encode(cripto, text)

        e.color = "07AF"
      end
    end
  end
end
