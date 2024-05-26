--[[	Thanks for using PicoNet Sitebuilder! I look forward
	to seeing your picosite! In order to make this available
	on PicoNet Explorer, you'll need to upload this lua file
	somewhere on the internet that you can get a link to it.
	Then, you'll want to go to the following thread:
	
		https://www.lexaloffle.com/bbs/?tid=140960
	
	and post your link based on the format provided there.
	it's  very possible that this format could change slightly
	and so I will not be listing that here just yet.
]]

	p = {
	title="home ",
	g=create_gui({
		x=0,y=0,
		width=300,height=300,
		fgcol = 0x090d
	}),
	copybuttons = {},
	init = function(self,explorer)
		local page = self
		add(self.copybuttons, self.g:attach({
			x=0, y=0, width=300, height=300,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard("--[[pod,pod_type=\"image\"]]unpod(\""..page.image2_raw.."\")")
					notify("image userdata added to clipboard")
				end
			end
		}))
	end,
	get_gui = function(self,explorer)
		return self.g
	end,
	draw = function(self,explorer)
		cls(32)
		palt(0)
		palt(0, true)
		sspr(self.image2, 0, 0, 300,32,0,0,300,32)
		palt()
		print("Thank you for visiting the official DYNACORP picosite!\n\n ",0,34.0,25)
		print("5/26/2024 ### DYNACORP FOUNDED\n----------------------------------\nHey guys, this website is for my picotron\nexclusive game studio. I'm working on some pretty\ncool prototypes right now, so expect to see some\ndownloads here soon!\n ",0,77.0,25)
		
	end,
	update = function(self,explorer)
		
	end,
	image2_raw = "b64:bHo0ADsBAAB4AQAA8URweHUAQygsAQAAIAAAAATw----fb8ZgD5wPiBOcD7QPuCekJ5g3pDe8P_k7mA_UD4wXmA_wF7AvnC_UP4BYP4B8P_hPlBuUD4wPkBuUD6wfqA_UAIAsUA_gE5QPoBO8P_gCgCgED5QfkA_oD4QPlwAETAEAPACkE5APpBO8P_fPpA_YH5gPgAUAAEcAA4iAPcHoD5gXnA_ED4gPoA_UD5gLvABLpAuMGUA46A_cD6APiA_ED5w-gBQIAAFowDwApA_gD6APjA_AD5g-gJAPvAAXwCQ7oDu8P_jPoBOHABTQH5QPrB3ABNwhQBg8P_uPlBuPAB2UG5APtA_MN0AID5gHgAg7rAKACBeMFEAEDAUAUA_kD5QGQAgvuDoAPAMTiA_8AI_QI6gjmA_oD5APvD-----A-7---93",
	image2 = unpod("b64:bHo0ADsBAAB4AQAA8URweHUAQygsAQAAIAAAAATw----fb8ZgD5wPiBOcD7QPuCekJ5g3pDe8P_k7mA_UD4wXmA_wF7AvnC_UP4BYP4B8P_hPlBuUD4wPkBuUD6wfqA_UAIAsUA_gE5QPoBO8P_gCgCgED5QfkA_oD4QPlwAETAEAPACkE5APpBO8P_fPpA_YH5gPgAUAAEcAA4iAPcHoD5gXnA_ED4gPoA_UD5gLvABLpAuMGUA46A_cD6APiA_ED5w-gBQIAAFowDwApA_gD6APjA_AD5g-gJAPvAAXwCQ7oDu8P_jPoBOHABTQH5QPrB3ABNwhQBg8P_uPlBuPAB2UG5APtA_MN0AID5gHgAg7rAKACBeMFEAEDAUAUA_kD5QGQAgvuDoAPAMTiA_8AI_QI6gjmA_oD5APvD-----A-7---93")
}