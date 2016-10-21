json.extract! schedule, :id, :startdate, :enddate, :startplace, :endplace, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)