Rails.application.routes.draw do
  root to: "root#index"

  get "/auth/:provider/callback" => "sessions#create"
end
