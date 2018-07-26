class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name, presence: true
      t.references :gossip, index: true, presence: true
      t.timestamps
    end
  end
end
