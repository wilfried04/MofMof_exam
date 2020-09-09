json.extract! room, :id, :name, :rent, :address, :age, :content, :created_at, :updated_at
json.url room_url(room, format: :json)
