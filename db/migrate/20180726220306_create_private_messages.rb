class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.references :user, index: true
      t.text :content
      t.datetime :date
      t.timestamps
    end
  end
end
