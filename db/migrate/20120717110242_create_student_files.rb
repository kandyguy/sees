class CreateStudentFiles < ActiveRecord::Migration
  def change
    create_table :student_files do |t|
      t.string :name
      t.integer :student_id
    end
  end
end
