module Bot
  module Menu
    class Carlos
      def initialize
        system("clear")

        print "Pessione enter para ligar o bot"

        gets

        system("clear")

        puts Rainbow("carlão").green + Rainbow(" online!").bright

        $bot.ready do
          system("clear")
          print "#{Time.now} | " + Rainbow("Carlão está em #{$bot.servers.count} ").green.bright

          print(Rainbow($bot.servers.count <= 1?"servidor":"servidores").green.bright)

          $colorizer.write "\n\nCarlão, o melhor pior bot do discord"

          print Rainbow("\nColoque o status do bot: ").bright
          $bot.game = gets

          puts Rainbow("\nlogs: \n").red.bright

        end
      end
    end
  end
end
