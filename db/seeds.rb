app = Rpush::Gcm::App.new
app.name = "iotandroid"
app.auth_key = ENV["GCM_API_KEY"]
app.connections = 1
app.save!
