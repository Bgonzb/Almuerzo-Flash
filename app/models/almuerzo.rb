class Almuerzo < ActiveRecord::Base
	validates :foto, presence:true
	validates :nombre, presence:true, uniqueness:true
	validates :descripcion, presence:true, length:{ minunum: 10, maximum:100}
	validates :precio, presence:true, numericality:{greater_than: 0, only_integer:true} 
	validates :stock, presence:true, numericality:{greater_than: 0, only_integer:true}
end
