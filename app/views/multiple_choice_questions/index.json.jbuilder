json.array!(@multiple_choice_questions) do |multiple_choice_question|
  json.extract! multiple_choice_question, :id, :title, :content
  json.url multiple_choice_question_url(multiple_choice_question, format: :json)
end
