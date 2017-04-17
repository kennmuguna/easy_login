Rails.application.routes.draw do
  get 'accounts/new'

  get 'accounts/show'

  get 'accounts/edit'

  get 'accounts/index'

  get 'usernames/new'

  get 'usernames/show'

  get 'usernames/edit'

  get 'usernames/index'

  resources :usernames do
    resources :accounts
  end
end
