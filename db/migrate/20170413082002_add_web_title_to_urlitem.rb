class AddWebTitleToUrlitem < ActiveRecord::Migration[5.0]
  def change
    add_column :urlitems, :web_title, :string
  end
end
