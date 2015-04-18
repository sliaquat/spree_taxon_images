Spree::Core::Engine.add_routes do
  namespace :admin do


    resources :taxons do
      resources :taxon_images do
        collection do
          post :update_positions
        end
      end

    end

  end

end
