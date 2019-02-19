class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :type
      t.integer :user_id
      t.integer :voted_id
      t.integer :voted_type

      t.timestamps
    end
  end
end
