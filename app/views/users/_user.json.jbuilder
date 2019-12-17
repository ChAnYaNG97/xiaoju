json.extract! user, :id, :name, :password_digest, :nickname, :email, :photo_url, :birthday, :tel, :created_at, :updated_at
json.url user_url(user, format: :json)
