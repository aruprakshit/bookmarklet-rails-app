Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins { |source, env|
      true
    }

    resource '/photos',
      headers: :any,
      methods: [:post, :options],
      credentials: true
  end
end
