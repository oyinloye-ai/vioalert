json.extract! place, :id, :title, :visited_by, :address, :latitude, :longitude, :created_at, :updated_at
json.url place_url(place, format: :json)
