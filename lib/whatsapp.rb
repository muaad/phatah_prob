class WhatsApp
	def request_code phone_number, cc
		`yowsup-cli registration --requestcode sms --phone #{phone_number} --cc #{cc} --mcc 123 --mnc 456`
	end

	def register phone_number, cc, code
		`yowsup-cli registration --register #{code} --phone #{phone_number} --cc #{cc}`
	end

	def login phone_number, password
		`yowsup-cli demos --yowsup --login #{phone_number}:#{password}`
	end

	def go_online phone_number, password
		login phone_number, password
		`/L`
	end
end
