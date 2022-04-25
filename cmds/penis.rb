module Bot
  module Penis
    extend Discordrb::Commands::CommandContainer

    command :penis do |event|
      event.send_embed do |e|
        e.title = "#{event.user.name}##{event.user.tag}"
        e.description = "8#{"="*rand(0..40)}D"
        e.color = "FF0000"
      end
    end
    command :gay, arg_types:[Discordrb::User] do |event, user|
      event.send_embed do |e|
        e.description = user.eql?(nil) ? "#{event.author.name} é #{rand(0..100)}% gay" : "#{user.name} é #{rand(0..100)}% gay"
        e.color = "FFF000"
      end
    end
  end
end
