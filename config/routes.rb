Rails.application.routes.draw do

  get 'home/index'

  get  'user/index' ,        to: 'user#index'
  get  'user/new' ,          to: 'user#new'
  post 'user/create' ,       to: 'user#create'
  get  'user/edit/:id',      to: 'user#edit',         as: 'user_edit'
  put  'user/update',        to: 'user#update',       as: 'user_update'
  get  'user/destroy/:id',   to: 'user#destroy',      as: 'user_destroy'
  get  'user/profile' ,      to: 'user#profile'

  get  'sessions/index' ,    to: 'sessions#index'
  post 'user/sessions' ,     to: 'sessions#create',   as: 'user_login'
  get  'user/destroy' ,     to: 'sessions#destroy'

  get  'book/index'
  get  'book/new'
  post 'book/create' ,       to: 'book#create'
  get  'book/edit/:id',      to: 'book#edit',          as: 'book_edit'
  put  'book/update',        to: 'book#update',        as: 'book_update'
  get  'book/destroy/:id',   to: 'book#destroy',       as: 'book_destroy'

end
