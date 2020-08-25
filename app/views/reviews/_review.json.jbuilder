json.extract! review, :id, :rating, :title, :content, :tea_id, :created_at, :updated_at
json.url review_url(review, format: :json)
