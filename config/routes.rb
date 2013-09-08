LittleBlackBook::Application.routes.draw do

  devise_for :users

  resources :contacts, :only => [:index,:show]

end
