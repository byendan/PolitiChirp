json.array!(@polititians) do |polititian|
  json.extract! polititian, :id
  json.url polititian_url(polititian, format: :json)
end
