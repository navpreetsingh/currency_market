require 'csv'
file = File.read("xauusd_1_min_10th_dec").split("\n")
file = file.map{|f| f.split("\t")}

CSV.open("xauusd_1_min_10.csv", "wb") do |csv|
	file.each do |f|
		csv << f
	end
end

#  http://www.myfxbook.com/forex-market/currencies/XAUUSD-historical-data
