module Bot
  module Help
    extend Discordrb::Commands::CommandContainer

    command :help do |event|
      event.send_embed do |embed|
        
        embed.title = "#{event.user.name}##{event.user.tag}"
        embed.description = "
>ping - pong
>qr [txt] - gera qr code com o texto inserido
>morse [encode/decode] [txt]
>github - github
>site - https://carlaoweb.herokuapp.com/"
        embed.color = "FF0A7"

      end

      #event.respond "#{event.timestamp - Time.now}"

    end

    command :github do |event|
      event.respond "<@#{event.user.id}>\nhttps://github.com/Luizin5/CarlaoBot"
    end
  end
end

