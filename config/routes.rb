Rails.application.routes.draw do
  root 'mobiles#index'
  get 'mobiles/new'
  get 'mobiles/create'
  get 'mobiles/show'

end
