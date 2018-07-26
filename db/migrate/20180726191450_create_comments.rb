class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, index: true, presence: true
      t.references :gossip, index: true, presence: true 
      t.references :comments, index: true, polymorphic: true, presence: false

      t.timestamps
    end
  end
end
