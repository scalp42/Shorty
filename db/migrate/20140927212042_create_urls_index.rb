class CreateUrlsIndex < ActiveRecord::Migration
  def change
    add_index :urls, :token
  end
end
