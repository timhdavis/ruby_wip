json.array!(@match_options) do |match_option|
  json.extract! match_option, :id, :type, :requirement, :importance
  json.url match_option_url(match_option, format: :json)
end
