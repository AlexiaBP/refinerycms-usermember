Refinery::Core::Engine.routes.draw do
  devise_for :usermembers, :class_name => "Refinery::Usermembers::Usermember", :module => "refinery/usermembers"

  namespace :usermembers, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :usermembers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end
end
