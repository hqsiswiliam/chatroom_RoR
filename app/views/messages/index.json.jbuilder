json.array!(@messages) do |message|
  json.extract! message, :username, :message
  json.url message_url(message, format: :json)
end
