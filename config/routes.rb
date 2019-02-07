

Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :page_contents
  end
end
