Rails.application.routes.draw do
	get 'admin' => 'admin#index'
	controller :sessions do
		get 'login' => :new
		post 'login' => :create
		delete 'logout' => :destroy
	end
	# get 'admin/index'
	# get 'sessions/new'
	get 'sessions/create'
	get 'sessions/destroy'
	resources :users
	# resources :contacts
	resources :contacts, only: [:create, :new] 
  	resources :orders
	resources :line_items
	resources :carts
	get 'store/index'
	resources :products
   	# root to: 'products#index'
   	# root 'store#index', as: 'store'
	resources :products do
		get :who_bought, on: :member
	end
	scope '(:locale)' do
		resources :orders
		resources :line_items
		resources :carts
		root 'store#index', as: 'store', via: :all
	end

	# authenticated :user, lambda {|user| user.userType?('user')} do
	#     resources :users,  only(['create']);
	# end

	# authenticated :user, lambda {|user| user.userType?('admin')} do
	#     resources :users
	# end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
