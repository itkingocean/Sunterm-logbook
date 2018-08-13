json.extract! signin, :id, :name, :company, :purpose, :created_at, :updated_at
json.url signin_url(signin, format: :json)
