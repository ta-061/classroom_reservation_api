# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://room-reservation-app-git-main-ta-061s-projects.vercel.app' # フロントエンドのURLを指定
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'],
        max_age: 600
    end
  end
  