class ApplicationController
	attr_writer :textField, :countLabel
	
	def count(sender)
		count = @textField.stringValue.length
		@countLabel.setStringValue("'#{@textField.stringValue}' has #{count} characters")
	end
end