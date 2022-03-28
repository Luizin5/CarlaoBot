require "discordrb"
require "sqlite3"
require "json"
require "rainbow"
require "lolize"
#require_relative "utilidades/animals"

module Bot

  include SQLite3
  include Lolize
  include JSON
  include Discordrb
#  include Animais
  using Rainbow

  $db = SQLite3::Database.new "db/db.db"

  $colorizer = Lolize::Colorizer.new

  $bot = Discordrb::Commands::CommandBot.new token:"#{ENV["TOKEN"]}",prefix: ">", ignore_bots: true


  p Dir["cmds/*.rb"].each { |m| require_relative m.gsub("\.rb","")}
  $bot.include!(Ping)
  $bot.include!(Economia)
  $bot.include!(Help)
  $bot.include!(Invite)
  $bot.include!(Tedio)
  $bot.include!(Summon)

  Menu::Carlos.new

  $bot.run


end


