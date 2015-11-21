json.array!(@doctor_profiles) do |doctor_profile|
  json.extract! doctor_profile, :id, :name, :role, :specialty, :hospital, :photo
  json.url doctor_profile_url(doctor_profile, format: :json)
end
