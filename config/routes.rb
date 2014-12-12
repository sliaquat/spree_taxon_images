Spree::Core::Engine.add_routes do
  namespace :admin do


    resources :taxons do


      resources :taxon_images

    end


  end

end
