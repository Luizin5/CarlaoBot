module Bot
  module Help
    extend Discordrb::Commands::CommandContainer

    command :help do |event|
      event.send_embed do |embed|
        
        embed.title = "#{event.user.name}##{event.user.tag}"
        embed.description = ">work - Trabalha vagabundo\n>money - consulte o banco e tenha depressão\n>ping - pong\n>tedio - faça o que o bot mandar para sair do tédio 😾"
        embed.color = "FFA7"

      end

      event.respond "#{event.timestamp - Time.now}"

    end
  end
end

