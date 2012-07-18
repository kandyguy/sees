class AddStudentAcceptance < ActiveRecord::Migration
  def up
    add_column :students, :acceptance, :integer, :default => 0
  end

  def down
    remove_column :students, :acceptance
  end
end
