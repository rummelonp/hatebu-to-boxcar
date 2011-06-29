class CreateHooks < ActiveRecord::Migration
  def self.up
    create_table :hooks do |t|
      t.string :username
      t.string :title
      t.string :url
      t.integer :uid
      t.integer :count
      t.string :permalink
      t.string :status
      t.string :comment
      t.timestamp :timestamp
      t.boolean :is_private
      t.string :key
      t.string :client
      t.string :color
      t.string :quote
      t.timestamp :created_at
    end
  end

  def self.down
    drop_table :hooks
  end
end
