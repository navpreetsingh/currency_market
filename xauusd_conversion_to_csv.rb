require 'csv'
file = File.read("xauusd_weekly").split("\n")
file = file.map{|f| f.split("\t")}

CSV.open("xauusd_weekly.csv", "wb") do |csv|
	file.each do |f|
		csv << f
	end
end

#  http://www.myfxbook.com/forex-market/currencies/XAUUSD-historical-data
