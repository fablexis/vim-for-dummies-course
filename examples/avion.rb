class Avion


	def initialize(fuel, passengers, tripulantes)
		@fuel = 0
		self.passengers = 0
		self.tripulantes = []
	end
def create_tourist_vuelo
	self.fuel= 300
	self.passengers = 200
	self.tripulantes = ["Maria","Jose","Pablito"] 
end
def create_private_fligth
	self.passengers = 10
end
	attr_accessor :gasolina, :tripulantes, :pilotos
end
