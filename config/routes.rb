Rails.application.routes.draw do
  get 'files/index'
  get 'files/new'
  post 'files/upload'
  root controller: :files, action: :new
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
