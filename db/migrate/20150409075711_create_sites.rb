class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :url, null: false

      t.timestamps null: false
    end
  end
end
