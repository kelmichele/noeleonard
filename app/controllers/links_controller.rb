class LinksController < ApplicationController
	layout false
	def fb
	    redirect_to('https://www.facebook.com/NBLPersonalInjuryAttorney')
	end

	def twitter
		redirect_to('https://twitter.com/NoelBLeonard/')
	end

	def linkedin
		redirect_to('https://www.linkedin.com/in/noelbleonardattorney/')
	end

	def google
		redirect_to('https://plus.google.com/+Attorney-leonard')
	end

	def youtube
		# redirect_to('https://www.youtube.com/channel/UCAVsZXeG48PAg__-lxnthkA')
		redirect_to('https://www.youtube.com/channel/UC22T77L9ofKsZPmFhj90jXg')
	end

	def hsdh
		redirect_to('https://hsdesignhouse.com')
	end
end


