class Almuerzo < ActiveRecord::Base
	validates :foto, presence:true
	validates :nombre, presence:true
	validates :descripcion, presence:true
	validates :precio, presence:true
	validates :stock, presence:true
end
