class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :student
      t.text :comment_text

      t.timestamps
    end
  end
end
