class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

          has_many :cart_items, dependent: :destroy
          has_many :addresses, dependent: :destroy
          has_many :orders, dependent: :destroy
          has_many :items, through: :cart_items


  def address_display
      postal_code + address
  end

  #def active_for_authentication?
    #super && (is_deleted == false)
  #end

end
