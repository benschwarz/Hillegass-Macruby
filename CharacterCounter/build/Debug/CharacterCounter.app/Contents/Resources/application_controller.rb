class ApplicationController
	attr_writer :textField, :countLabel
	
	def initialize
		super
		count(self)
	end
	
	def count(sender)
		count = @textField.stringValue.length
		@countLabel.setStringValue("'#{@textField.stringValue}' has #{count} characters")
	end
end