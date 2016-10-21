module HomeHelper
	def chartValue
		arrs = [0,0,0,0,0,0,0,0,0,0,0,0]
		@schedules.each do |eData|
			if eData.startdate.year == DateTime.now.year
				arrs[Integer(eData.startdate.month)-1]+=1
			end
		end
		values = 'data-values = [' + arrs.join(",") + "]" 
	end
	def chartColor
		arr = ["&quot;#FF6384&quot;","&quot;#4BC0C0&quot;", "&quot;#4BC0C0&quot;", "&quot;#FFCE56&quot;", "&quot;#4BC0C0&quot;", "&quot;#36A2EB&quot;", "&quot;#CC6304&quot;", "&quot;#E7E9ED&quot;", "&quot;#FEF384&quot;", "&quot;#4BCFC0&quot;", "&quot;#FFCEC6&quot;", "&quot;#44C0C0&quot;", "&quot;#C6A2EB&quot;"]
		c = 'data-colors= [' + arr.join(",") + "]"
	end
	def chartlabels
		arr = ["&quot;Một&quot;", "&quot;Hai&quot;", "&quot;Ba&quot;", "'&quot;Bốn&quot;'", "&quot;Năm&quot;", "&quot;Sáu&quot;", "&quot;Bảy&quot;", "&quot;Tám&quot;", "&quot;Chín&quot;", "&quot;Mười&quot;", "&quot;Mười_một&quot;", "&quot;Mười_hai&quot;"]
		c = 'data-labels= [' + arr.join(",") + "]"
	end

	def getType (id)
		tp = ""
		if id==1
			tp = "web"
		else
			tp = "tech"
		end
		tp
	end
	def showType (id)
		tp = ""
		if id==1
			tp = "Địa điểm du lịch"
		else
			tp = "Khoảnh khắc đi du lịch"
		end
		tp
	end
end
