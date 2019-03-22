Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # CRUD actions for memes
  resources :memes do
    resources :posts
  end

  # /mememaster (delete memes)
  namespace :mememaster do
    resources :memes do
      resources :posts
    end
  end

  # memes/12/posts

  # app.get('/memes/:id/posts')
end