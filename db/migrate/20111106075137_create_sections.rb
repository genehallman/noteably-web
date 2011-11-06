class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :note
      t.text :content
      t.timestamps
    end
  end
end
