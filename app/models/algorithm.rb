class Algorithm < ApplicationRecord
  before_save :default_values
  after_create_commit { RunAlgorithmJob.perform_later self }
  after_update {StatusUpdateJob.perform_later self}

  def default_values
    self.input ||= "Chr#{ rand(1..46) }"
    self.duration ||= rand(1..6)
    self.status ||= 'pending'
  end
end
