Rails.application.routes.draw do

  resources 'algorithms'

  root 'algorithms#index'

  mount ActionCable.server => 'cable'
end
