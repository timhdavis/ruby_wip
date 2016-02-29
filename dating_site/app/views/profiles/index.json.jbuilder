json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :about_me, :age
  json.url profile_url(profile, format: :json)
end
