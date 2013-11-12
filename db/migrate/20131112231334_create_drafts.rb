class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.integer :number
      t.string :title
      t.string :blurb
      t.text :body
      t.string :status
      t.integer :idea_id

      t.timestamps
    end
  end
end
