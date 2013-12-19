json.array!(@blank_questions) do |blank_question|
  json.extract! blank_question, :id, :title, :content
  json.url blank_question_url(blank_question, format: :json)
end
