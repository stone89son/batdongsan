Batdongsan::Application.routes.draw do
  devise_for :admins
  no_create = {except: [:new, :create]}
  no_index = {except: :index}

  namespace :admin do
    resources :admins
    root to: "admin/admins#index"
  end

end
