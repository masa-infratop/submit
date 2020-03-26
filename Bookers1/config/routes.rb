Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#top'
  get 'books' => 'books#index', as: 'book' #used as 「book_path」
  get 'books/:id' => 'books#show', as: 'show' #used as 「show_path」
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  post 'books' => 'books#create' #linked in index.html.erb 「Newpost part」 url: '/books'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
