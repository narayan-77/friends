json.extract! chatter, :id, :first_name, :last_name, :email, :phone, :created_at, :updated_at
json.url chatter_url(chatter, format: :json)
