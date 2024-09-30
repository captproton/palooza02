class CreatePalooza02Paloozas < ActiveRecord::Migration[7.1]
  def change
    create_table :palooza02_paloozas do |t|
      t.string :title
      t.text :content
      t.datetime :published_at
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
