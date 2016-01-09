Rpush::Gcm::App.seed do |app|
  app.id = 1
  app.name = "iotandroid"
  app.auth_key = ENV["GCM_API_KEY"]
  app.connections = 1
end
