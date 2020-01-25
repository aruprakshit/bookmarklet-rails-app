Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '/photos',
      headers: :any,
      methods: [:post, :options]
  end
end
