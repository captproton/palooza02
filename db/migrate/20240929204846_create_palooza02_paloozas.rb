class CreatePalooza02Paloozas < ActiveRecord::Migration[7.2]
  def change
    create_table :palooza02_paloozas do |t|
      t.string :title
      t.text :content
      t.datetime :published_at

      t.timestamps
    end
  end
end
