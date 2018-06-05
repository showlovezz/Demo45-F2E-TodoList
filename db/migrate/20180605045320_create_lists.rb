class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
