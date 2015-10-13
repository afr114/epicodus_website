Rails.application.routes.draw do
  resources :syllabuses do
    resources :lessons
  end
end
