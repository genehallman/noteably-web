class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :user
      t.string :name
      t.integer :sort_order
      t.timestamps
    end
  end
end
