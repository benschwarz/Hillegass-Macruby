class ApplicationController
	attr_writer :textField, :stopButton, :startButton
	attr_reader :synth, :textField
	
	def init
		@synth = NSSpeechSynthesizer.alloc.initWithVoice(nil)
		synth.delegate = self
		super
	end
	
	def sayIt(sender)
		unless textField.stringValue.strip.empty?
			synth.startSpeakingString(textField.stringValue)
		end
		
		@stopButton.enabled = true
		@startButton.enabled = false
	end
	
	def stopIt(sender)
		synth.stopSpeaking
	end
	
	private
	def speechSynthesizer(sender, didFinishSpeaking: success)
		@stopButton.enabled = false
		@startButton.enabled = true
	end
	
	def awakeFromNib
		@stopButton.enabled = false
	end
end