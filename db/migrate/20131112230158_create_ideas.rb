class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.integer :user_id

      t.has_many :drafts
      t.belongs_to :user
      t.timestamps
    end
  end
end
