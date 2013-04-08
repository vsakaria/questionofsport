Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['eZWa6Aos9DBDT2dx5s0g'], ENV['jjd1BZnT3zlXfv17L8cUpYRLL6lowgHiEgM39suUhQI']
end