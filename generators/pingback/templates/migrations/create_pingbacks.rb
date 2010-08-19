class CreatePingbacks < ActiveRecord::Migration
  def self.up
    create_table :pingbacks do |t|
      t.string :url
      t.string :title
      t.text   :excerpt

      t.references :target, :polymorphic => true
      t.timestamps
    end
  end

  def self.down
    drop_table :pingbacks
  end
end
