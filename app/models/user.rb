class User < ActiveRecord::Base

	before_save :create_avatar_url
	before_validation :prep_email
	

	has_secure_password
	# ------------------That's our problem-----------------
	validates :name, presence: true
	validates :username, uniqueness: true, presence: true
	validates :email, uniqueness: true, presence: true#, format: { with: /\A[\w.+-]+@([\w]+.)+\w+\z+/ }

	private
 
def prep_email
    self.email = self.email.strip.downcase if self.email
end

def create_avatar_url
   # self.avatar_url = "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(self.email)}?s=50"
   self.avatar_url = "http://www.random.com"
end

end
