json.array!(@ideas) do |idea|
  json.extract! idea, :title, :user_id
  json.url idea_url(idea, format: :json)
end
