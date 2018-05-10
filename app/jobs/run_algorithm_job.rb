class RunAlgorithmJob < ApplicationJob
  queue_as :default

  def perform(algorithm)
    # Heavy task
    sleep algorithm.duration.to_i
    algorithm.status = "ready"
    algorithm.save!
  end
end
