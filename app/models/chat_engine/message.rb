module ChatEngine
  class Message < ApplicationRecord
    belongs_to :sender, polymorphic: true
    belongs_to :chat
    after_create_commit :jobs

    def jobs
      MessageSendingJob.perform_later(self)
    end
    
    
    
  end
end
