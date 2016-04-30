Rails.application.routes.draw do
  get 'temp_page/home'

  devise_for :users

  devise_scope :user do
    #root to: "devise/sessions#new"
  end

  root to: 'temp_page#home'

end
