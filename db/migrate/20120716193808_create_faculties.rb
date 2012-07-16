class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.belongs_to :school
    end
  end
end
