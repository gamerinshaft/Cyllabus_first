json.array!(@companies) do |company|
  json.extract! company, :id, :company_name, :homepage_url, :established_at, :number_of_members, :mail, :twitter, :slideshare, :vine, :youtube, :logo, :cover, :phone
  json.url company_url(company, format: :json)
end
