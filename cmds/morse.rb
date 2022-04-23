module Bot
  module Morse
    extend Discordrb::Commands::CommandContainer

    command :morse do |event, decodeOrEncode, *txt|
      txt = txt.join('')

      event.send_embed do |e|
        e.title = "#{event.user.name}"
        e.description = decodeOrEncode.eql?("encode") ? "texto criptografado: #{Telegraph.text_to_morse(txt)}" : "texto descriptografado: #{Telegraph.morse_to_text(txt)}"
        e.color = "#A7O09F"
      end
    end
  end
end

