class User < ActiveRecord::Base
	 has_secure_password
	 belongs_to :instructor
	 validates :nombre, uniqueness: true
	 validates :password, :confirmation => { message: 'password' }
end
