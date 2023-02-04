class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  enum role:[:buyer, :seller, :admin]

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  has_one :cart, dependent: :destroy
  has_many :products
  
  def current_cart
    if self.cart.nil?
    self.create_cart(user_id: self.id)
    end
    self.cart
   end

  #validates :email, :user_id, presence: true
         
end
