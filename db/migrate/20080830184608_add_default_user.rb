class AddDefaultUser < ActiveRecord::Migration
  def self.up
	if !User.find_by_email('admin@admin.org')
        User.create(:email => 'admin@admin.org', :crypt => 'admin', :name => 'admin', :quota => '')
	end
  end

  def self.down
  end
end
