Rails.application.routes.draw do
  root to: "root#index"

  get "/auth/:provider/callback" => "session#create"

  delete "/sign_out" => "session#destroy"
end
