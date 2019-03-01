class CreateUsedTags < ActiveRecord::Migration[5.2]
  def change
    create_table :used_tags do |t|
      t.integer :tagged_id
      t.integer :tagged_type
      t.integer :tag_id

      t.timestamps
    end
  end
end
