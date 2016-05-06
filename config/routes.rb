Rails.application.routes.draw do
  root 'articles#index'

  # get 'articles/new' => 'articles#new', as: :new_article
  # post 'articles' => 'articles#create'
  # get 'articles/:id' => 'articles#show', as: :article
  # get 'articles' => 'articles#index'
  # get 'articles/:id/edit' => "articles#edit", as: :edit_article
  # patch 'articles/:id' => "articles#update", as: :update_article
  # delete 'articles/:id' => "articles#destroy"
  # get 'hot_articles' => "articles#hot_articles"
  get 'recents' => "articles#recents"
  resources :articles
end
