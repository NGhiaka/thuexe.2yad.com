json.extract! user, :id, :uname, :password, :created_at, :updated_at
json.url user_url(user, format: :json)