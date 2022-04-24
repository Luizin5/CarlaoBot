maodule Bot
  module Qr
    extend Discordrb::Commands::CommandContainer
    command :qr do |event, *txt|
      event.respond "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=#{txt.join(' ').gsub(" ","%20")}"
    end
  end
end
