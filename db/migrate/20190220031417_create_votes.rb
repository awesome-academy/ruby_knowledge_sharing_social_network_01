class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :vote_type
      t.integer :user_id
      t.integer :voted_id
      t.integer :voted_type

      t.timestamps
    end
    add_index :votes, :voted_type
    add_index :votes, :vote_type
  end
end
