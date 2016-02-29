json.array!(@events) do |event|
  json.extract! event, :id, :title, :info
  json.url event_url(event, format: :json)
end
