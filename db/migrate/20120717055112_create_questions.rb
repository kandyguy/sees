class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belong_to :category
      t.string :question_text

      t.timestamps
    end
  end
end
