json.array!(@student_profiles) do |student_profile|
  json.extract! student_profile, :id, :name, :year, :clinical_school
  json.url student_profile_url(student_profile, format: :json)
end
