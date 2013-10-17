class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :dev_lead
      t.string :support_lead

      t.timestamps
    end
  end
end
