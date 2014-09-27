class CreateUrlsTable < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :full_uri
      t.string :token

      t.timestamps
    end
  end
end
