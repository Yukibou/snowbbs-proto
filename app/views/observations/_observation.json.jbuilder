json.extract! observation, :id, :observer, :created_at, :updated_at
json.url observation_url(observation, format: :json)