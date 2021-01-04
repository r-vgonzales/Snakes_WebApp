json.extract! comment, :id, :fact_id, :message, :author, :location, :created_at, :updated_at
json.url comment_url(comment, format: :json)
