class Random
	attr_writer :textField
	
	def generate(sender)
		@textField.setIntValue rand * 100 + 1
	end
	
	def seed(sender)
		srand(Time.now.to_i)
		@textField.setStringValue "Generator seeded"
	end
	
	private
	def awakeFromNib
		time = Time.now.to_s
		@textField.setObjectValue time
	end
end