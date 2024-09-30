class AddAuthorToPalooza02Paloozas < ActiveRecord::Migration[7.1]
  def change
    add_reference :palooza02_paloozas, :author, null: false, foreign_key: { to_table: :users }
  end
end
