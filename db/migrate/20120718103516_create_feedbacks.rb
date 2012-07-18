class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.belongs_to :student
      t.belongs_to :user
      t.belongs_to :school
      t.string :answers
      t.timestamps
    end
  end
end
