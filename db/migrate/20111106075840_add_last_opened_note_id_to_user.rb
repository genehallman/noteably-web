class AddLastOpenedNoteIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :last_opened_note_id, :integer
  end
end
