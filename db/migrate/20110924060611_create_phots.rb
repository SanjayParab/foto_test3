class CreatePhots < ActiveRecord::Migration
  def self.up
    create_table :phots do |t|
      t.string :image_name

      t.timestamps
    end
  end

  def self.down
    drop_table :phots
  end
end
