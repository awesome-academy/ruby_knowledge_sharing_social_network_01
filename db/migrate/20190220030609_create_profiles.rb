class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :avatar_url
      t.string :cover_url
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
