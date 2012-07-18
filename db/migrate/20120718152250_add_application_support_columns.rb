class AddApplicationSupportColumns < ActiveRecord::Migration
  def up
    add_column :feedbacks, :support_student, :boolean, :default => false
    add_column :feedbacks, :application_support_status_id, :integer
    add_column :feedbacks, :application_support_comment, :text
  end

  def down
    drop_column :feedbacks, :support_student
    drop_column :feedbacks, :application_support_status_id
    drop_column :feedbacks, :application_support_comment
  end
end
