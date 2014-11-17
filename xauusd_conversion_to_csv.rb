require 'csv'
file = File.read("xauusd_4_hourly").split("\n")
file = file.map{|f| f.split("\t")}

CSV.open("xauusd_4_hourly.csv", "wb") do |csv|
	file.each do |f|
		csv << f
	end
end

