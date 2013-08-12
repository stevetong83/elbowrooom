Elbowroom::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'home#index'

  resources :messages, only: [:new, :create]


  get 'portfolio/zipaclip', to: 'portfolio#zipaclip'
  get 'portfolio/az-scream-park', to: 'portfolio#azscreampark', as: 'portfolio/azscreampark'
  get 'portfolio/phil-smith-design', to: 'portfolio#philsmithdesign', as: 'portfolio/philsmithdesign'
  get 'portfolio/xsp', to: 'portfolio#xsp'
  get 'portfolio/homewell-scottsdale', to: 'portfolio#homewellscottsdale', as: 'portfolio/homewellscottsdale'
  get 'portfolio/jenco', to: 'portfolio#jenco'

end
