class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title,   :limit=>100, :null=>false
      t.string :content, :limit=>32767, :null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
