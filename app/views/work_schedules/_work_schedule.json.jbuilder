json.extract! work_schedule, :id, :day, :user_id, :start_work, :end_work, :created_at, :updated_at
json.url work_schedule_url(work_schedule, format: :json)
