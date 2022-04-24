module Bot
  module Help
    extend Discordrb::Commands::CommandContainer

    command :help do |event|
      event.send_embed do |embed|
        
        embed.title = "#{event.user.name}##{event.user.tag}"
        embed.description = "
>registrar - registre-se no banco de dados para trabalhar
>work - Trabalha vagabundo
>money - consulte o banco e tenha depressão
>ping - pong
>qr [txt] - gera qr code com o texto inserido
>tedio - faça o que o bot mandar para sair do tédio 😾
>morse [encode/decode] [txt]
>github - github
>site - https://carlaoweb.herokuapp.com/"
        embed.color = "FF0A7"

      end

      event.respond "#{event.timestamp - Time.now}"

    end
  end
end

