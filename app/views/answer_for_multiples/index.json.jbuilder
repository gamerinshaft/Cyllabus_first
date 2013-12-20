json.array!(@answer_for_multiples) do |answer_for_multiple|
  json.extract! answer_for_multiple, :id, :check, :content
  json.url answer_for_multiple_url(answer_for_multiple, format: :json)
end
