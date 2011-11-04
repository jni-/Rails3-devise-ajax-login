Rails3deviseAjax::Application.routes.draw do
  get "home/index"
  devise_for :users, :controllers => {:sessions => 'sessions'}

  root :to => 'home#index'

end
