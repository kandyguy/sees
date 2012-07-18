class CreateApplicationSupportStatuses < ActiveRecord::Migration
  def change
    create_table :application_support_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
