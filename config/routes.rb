Rails.application.routes.draw do
  # resources :alarms
  resources :alarms, only: [:index, :destroy] do
    collection do
      get :trigger
    end
  end
end
