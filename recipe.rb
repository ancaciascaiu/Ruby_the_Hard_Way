class Recipe
	attr_reader :id, :name, :description, :ingredients, :directions

 	def initialize(arg1, arg2, arg3, arg4, arg5)
 		@id = arg1
 		@name = arg2
 		@description = arg3
 		@ingredients = arg4
 		@directions = arg5
 	end

end
