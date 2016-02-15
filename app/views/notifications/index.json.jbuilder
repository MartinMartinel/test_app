json.array!(@notifications) do |notification|
  json.extract! notification, :id, :user_id, :message, :notification_type, :sender
  json.url notification_url(notification, format: :json)
end
