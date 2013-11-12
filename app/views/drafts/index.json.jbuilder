json.array!(@drafts) do |draft|
  json.extract! draft, :number, :title, :blurb, :body, :status, :idea_id
  json.url draft_url(draft, format: :json)
end
