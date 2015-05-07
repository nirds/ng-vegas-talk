Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs/javascripts/jasmine_specs' if defined?(JasmineRails)
  root to: "todos#index"
  resources :todos
end
