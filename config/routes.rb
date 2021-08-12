Rails.application.routes.draw do
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create destroy]
  end
end
