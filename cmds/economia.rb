module Bot
  module Economia
    extend Discordrb::Commands::CommandContainer
    
    #ok ok comecando pelo comeco.
    # eu vou criar 2 comandos aqui
    # primeiro o ">work", que ira pegar o id do usuario e ver quantos de money o usuario tem,
    # entao  eu vou escolher um
    # trbalho aletaorio em um hash e adicionar o valor do salario ao dinheiro total do usuario.
    #
        
    command :work do |event|
      
      $db.execute("select userid from economia") do |row|
        $row = row

        p row
      end

      if $row.index(event.user.id)
        event.send_embed do |e|
          e.title = "tu ja ta kk"
        end
          
      else

        $db.execute("insert into economia values(#{rand(0..1000)},#{event.user.id},0)")

        event.send_embed do |e|
          e.title = "#{event.user.name}##{event.user.tag}"
          e.description = "Usuario registrado (digite >work) novamente para trabalhar."
          e.timestamp = Time.now
        end
      end
    end
  end
end
