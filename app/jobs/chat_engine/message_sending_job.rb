module ChatEngine
  class MessageSendingJob < ApplicationJob
    queue_as :default

    def perform(message)
      # Do something later
      ActionCable.server.broadcast "chat_#{message.chat_id}", {message: render_message(message), sender_type: message.sender.class.to_s,sender_id: message.sender.id}
    end
    
    private
     
    def render_message(message)
        ApplicationController.render partial: 'chat_engine/messages/message', locals: { message: message }
    end
  end
end
