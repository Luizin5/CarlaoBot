module Bot
  module Help
    extend Discordrb::Commands::CommandContainer

    command :help do |event|
      event.send_embed do |embed|
        
        embed.title = "#{event.user.name}##{event.user.tag}"
        embed.description = "
>ping - pong
>penis - ...
>gay [user (opicional)] - veja o quão gay você, ou seu amigo é
>dado - dado.
>escolha [txt] - >escolha devo comprar uma rtx? - não (provavelmente porque não tem dinheiro)
>timer [tempo em segundos) [tarefa] - lembre-se de fazer algo
>clear [numero de mensagens] - limpe o chat
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

