json.array!(@activities) do |activity|
  json.extract! activity, :id, :doctor_id, :description, :activity_type, :location, :date, :start_time, :end_time, :spots
  json.url activity_url(activity, format: :json)
end
