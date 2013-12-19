class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :homepage_url
      t.date :established_at
      t.integer :number_of_members
      t.string :mail
      t.string :twitter
      t.string :slideshare
      t.string :vine
      t.string :youtube
      t.string :logo
      t.string :cover
      t.string :phone
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
