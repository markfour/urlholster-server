class CreateUrlitems < ActiveRecord::Migration[5.0]
  def change
    create_table :urlitems do |t|
      t.integer :user_id
      t.string :rawurl
      t.date :preserveDate
      t.boolean :unread
      t.boolean :archive

      t.timestamps
    end
  end
end
