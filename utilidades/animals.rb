require "httparty"
require "nokogiri"

module Animais
  class Scrapper
    include HTTParty
    include Nokogiri

    attr_reader :url, :parsed, :animais

    def initialize
      @animais = []
      @url = HTTParty.get("https://a-z-animals.com/animals/")
      @parsed = Nokogiri::HTML(@url.body)

      @parsed.css("li").each { |n| @animais << n.content }
    
      4.times do
        @animais.pop
      end

    end
  end
end

system("clear")

#puts Scrapper.new.animais

## PARA PEGAR UM ANIMAL ALEATORIO DO ARRAY ##

#def animalRandom
#  puts "ANIMAL SELECIONADO: "
#  puts Scrapper.new.animais.sample
#end

#animalRandom
#
# 
