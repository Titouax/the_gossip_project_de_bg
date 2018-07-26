class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.references :user, index: true, presence: true

      t.timestamps
    end
  end
end
