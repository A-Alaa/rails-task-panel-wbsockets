class StatusUpdateJob < ApplicationJob
  queue_as :default

  def perform(algorithm)
    ActionCable.server.broadcast 'status_channel', updated_algorithm: algorithm
  end
end
