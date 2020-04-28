Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # V1
  # resources :products do
  # 	resources :ratings
  # end

  # V2
  # resources :products do
  # 	resources :ratings
  # end
  namespace :admin do
	  resources :products do
	  	resources :questions
	  end
	end

  resources :customers do
  	resources :products do
  		resources :ratings
  		post "/manual_rating", to: "ratings#manual_rating"
  		resources :questions do 
  			resources :answers
  		end
  	end
  end
end
