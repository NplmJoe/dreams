class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :os
      t.string :os_version
      t.date :os_last_updated
      t.string :app_version
      t.date :app_last_updated
      t.integer :environment_id
      t.integer :app_id

      t.timestamps
    end
  end
end
