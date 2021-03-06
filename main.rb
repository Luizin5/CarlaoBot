require "dotenv/load"
require "discordrb"
#require "pg"
require "telegraph"
require "json"
#require "rainbow"
#require "lolize"
#require_relative "utilidades/animals"
#load "keepalive.rb"
#alive

module Bot

  #include SQLite3
  #include Lolize
  #include PG
  include Telegraph
  include JSON
  include Discordrb
  #load "keepalive.rb"
  #include Animais
  #using Rainbow


  #$db = PG.connect :host=>ENV["HOST"], :dbname => ENV["DATABASE"], :user=>ENV["USER"], :password=>ENV["PASSWORD"], :port=>ENV["PORTS"]

  #$colorizer = Lolize::Colorizer.new

  $bot = Discordrb::Commands::CommandBot.new token:"#{ENV["TOKEN"]}",prefix: ">", ignore_bots: true


  p Dir["cmds/*.rb"].each { |m| require_relative m.gsub("\.rb","")}
  $bot.include!(Ping)
  $bot.include!(Perguntar)
  #$bot.include!(Economia)
  $bot.include!(Help)
  $bot.include!(Invite)
  $bot.include!(Dado)
  $bot.include!(Reminder)
  $bot.include!(Penis)
  $bot.include!(Morse)
  $bot.include!(Site)
  $bot.include!(Clear)
  #$bot.include!(Cripto)
  #$bot.include!(Tedio)
  $bot.include!(Qr)
  $bot.include!(Summon)
  $bot.include!(Mention)

  #Menu::Carlos.new

  $bot.run


  #alive


end


