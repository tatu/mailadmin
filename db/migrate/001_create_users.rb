class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email, :limit => 128, :null => false
      t.string :crypt, :limit => 128, :null => false, :default => "aqui password"
      t.string :name, :null => false
      t.integer :uid, :default => "1000", :null => false
      t.integer :gid, :default => "1000", :null => false
      t.string :homedir, :null => false, :default => "/home/vmail"
      t.string :maildir, :null => false, :default => "/home/vmail/"
      t.text :quota, :null => false
      t.string :postfix, :default => "y", :null => false  #change this manually to enum('n','y') default y
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
