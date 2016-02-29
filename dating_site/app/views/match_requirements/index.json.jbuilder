json.array!(@match_requirements) do |match_requirement|
  json.extract! match_requirement, :id, :requirement_type, :requirement, :importance
  json.url match_requirement_url(match_requirement, format: :json)
end
