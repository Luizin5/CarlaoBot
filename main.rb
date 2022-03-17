require "discordrb"

module Bot

  include Discordrb

  $bot = Discordrb::Commands::CommandBot.new token:ENV["TOKEN"],prefix: ">", ignore_bots: true


  p Dir["cmds/*.rb"].each { |m| require_relative m.gsub("\.rb","")}
  $bot.include!(Ping)
  puts "MODULOS CAREGADOS!"


  #carregar

  $bot.run

end

Bot.carregar
