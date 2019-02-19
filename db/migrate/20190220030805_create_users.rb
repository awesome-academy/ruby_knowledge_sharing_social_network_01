class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.integer :profile_id
      t.integer :type

      t.timestamps
    end
  end
end
