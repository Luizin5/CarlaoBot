module Bot
  module Tedio
    extend Discordrb::Commands::CommandContainer

    command :tedio do |event|

      #topicos = ["animais","carros","fatos historicos"].sample

      
      event.send_embed do |e|
        e.title = "Está no tédio?"
        e.description = "Pesquise sobre o animal #{Animais::Scrapper.new.animais.sample}" #if topicos == "animais"
        e.color = "#FFF38"
      end
    end
  end
end
