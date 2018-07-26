class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title, presence: true
      t.text :content, presence: true
      t.datetime :date, presence: true
      t.references :user, index: true, presence: true
      t.references :tag, index: true, presence: true
      t.timestamps
    end
  end
end
