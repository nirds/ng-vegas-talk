Rails.application.routes.draw do
  resources :todos
  root to: "todos#index"
  get "/1" => "todos#index"
  get "/2" => "todos#index"
  get "/3" => "todos#index"
  get "/4" => "todos#index"
  get "/5" => "todos#index"
  get "/6" => "todos#index"
  get "/7" => "todos#index"
  get "/8" => "todos#index"
  get "/9" => "todos#index"
  get "/10" => "todos#index"
end
