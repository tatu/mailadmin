class User < ActiveRecord::Base
        validates_uniqueness_of :email
        validates_presence_of :email, :crypt
	validates_size_of :crypt, :minimum => 8, :too_short => "Your password  must be at least %d characters."
	validates_format_of :email, :with => /^([^@s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})$/i

	def crypt=(pw)
                self[:crypt] = pw.crypt(pw)
        end

end
