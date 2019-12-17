json.extract! activity, :id, :name, :description, :detail, :start_time, :location, :pic_url, :max_number, :created_at, :updated_at
json.url activity_url(activity, format: :json)
