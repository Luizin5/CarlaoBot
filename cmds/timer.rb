module Bot
  module Reminder
    extend Discordrb::Commands::CommandContainer

    command :timer do |event, time, *tarefa|
      tarefa = tarefa.join(' ')
      sleep time.to_i
      event.respond "<@#{event.user.id}>, #{tarefa}!"
    end
  end
end
