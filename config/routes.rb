Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :sizing_guides
  end

  resources :sizing_guides, only: :show

end