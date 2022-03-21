require "discordrb"
require "sqlite3"
require "json"
require_relative "utilidades/animals"

module Bot

  include SQLite3
  include JSON
  include Discordrb
  include Animais

  $db = SQLite3::Database.new "db/db.db"

  $bot = Discordrb::Commands::CommandBot.new token:"#{ENV["TOKEN"]}",prefix: ">", ignore_bots: true


  p Dir["cmds/*.rb"].each { |m| require_relative m.gsub("\.rb","")}
  $bot.include!(Ping)
  $bot.include!(Economia)
  $bot.include!(Tedio)
  puts "MODULOS CAREGADOS!"


  #carregar

  $bot.run

end


