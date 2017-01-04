Rails.application.routes.draw do

  root 'demo#index'

  resources :subjects do
    member do
        get  :delete
        get :destroy
    end
  end

  resources :pages do
    member do
      get :delete
      get :destroy
    end
  end

  resources :sections do
    member do
      get :delete
    end
  end
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/seo'
  get 'demo/escape_output'
  
  #this line makes index page as root page i.e. page access on localhost:3000
  #root :to => 'demo#index'
  
  
  #default routing-may go away
  #get ':controller(/:action(/:id))'# works by simply typing only localhost:3000/demo
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
