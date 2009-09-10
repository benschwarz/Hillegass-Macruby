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
		@textField.setObjectValue Time.now.to_s
	end
end