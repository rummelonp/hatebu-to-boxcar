class CreateBoxcars < ActiveRecord::Migration
  def self.up
    create_table :boxcars do |t|
      t.string :email
      t.string :password
    end
  end

  def self.down
    drop_table :boxcars
  end
end
