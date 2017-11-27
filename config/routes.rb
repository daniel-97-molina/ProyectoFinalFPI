Rails.application.routes.draw do
  resources :sucursals do
    resources :miembros
  end
  resources :miembros  #para respuesta de post
  #get '/sucursals/:sucursal' => 'miembros#index', foo: 'bar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
