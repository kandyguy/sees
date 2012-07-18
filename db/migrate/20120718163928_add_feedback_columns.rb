class AddFeedbackColumns < ActiveRecord::Migration
  def up
    add_column :feedbacks, :extra_note, :text
    add_column :feedbacks, :read_confirmation, :boolean, :default => false
    add_column :feedbacks, :recommandation_level, :string
  end

  def down
    drop_column :feedbacks, :extra_note
    drop_column :feedbacks, :read_confirmation
    drop_column :feedbacks, :recommandation_level
  end
end
