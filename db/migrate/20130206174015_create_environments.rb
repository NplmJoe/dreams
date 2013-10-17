class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.string :name
      t.string :description
      t.boolean :integrated

      t.timestamps
    end
  end
end
