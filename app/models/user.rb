class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nombre, presence:true
  validates :phone, presence:true, numericality:{greater_than: 0, only_integer:true}
  validates :tienda, presence:true

end
