require 'api_constraints'
MarketPlaceApi::Application.routes.draw do
  # Api definition
  namespace :api, defaults: { format: :json}, constraints: {subdomain: 'api'}, path: '/' do
    # 1.We are going to list our resources here
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do
     # 2.We are going to list our resources here
    end
  end
end
