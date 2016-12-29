class UserInfo < ActiveRecord::Base
 belongs_to :user
  has_one :account
  after_create :create_account

  private
    def create_account
      Account.create(user_id: user_id , balance: 0.0)
    end
   # mount_uploader :image, ImageUploader
    #validates_format_of :image, :with => %r{\.(jpg|jpeg)$}i, :message => "Only JPG Format"
    #validate :image_size_validation
    
    
    #def image_size_validation
    # errors[:image] << "should be less than 5MB" if image.size > 5.megabytes
   # end
   
end
