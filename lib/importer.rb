class Importer
	def self.import(path)
		file = File.open(path)
		spreadsheet = open_spreadsheet(path)
	  	header = spreadsheet.row(1)
	  	(2..spreadsheet.last_row).each do |i|
	    	row = Hash[[header, spreadsheet.row(i)].transpose]
	    	attributes = row.to_hash
	    	character = Character.new	    	
	    	character.collector_number = attributes["#"]
	    	character.name = attributes["Card Name"]
	    	character.subtitle = attributes["Subtitle"]
	    	character.cost = attributes["Cost"]
	    	character.die_limit = attributes["Die Limit"]
	    	character.ability = attributes["Ability"]
	    	character.burst_ability = attributes["* Ability"]
	    	character.double_burst_ability = attributes["** Ability"]
	    	character.global = attributes["Global Ability"]
	    	character.rarity = Rarity.find_by_name(attributes["Rarity"])
	    	character.affiliation = Affiliation.find_by_name(attributes["Affiliation"])
	    	character.type = Type.find_by_name(attributes["Type"])
	    	character.save!
	  	end
	end

	def self.open_spreadsheet(path)
	  case File.extname(path)
	  when ".csv" then Csv.new(path, nil, :ignore)
	  when ".xls" then Roo::Excel.new(path, nil, :ignore)
	  when ".xlsx" then Roo::Excelx.new(path, nil, :ignore)
	  else raise "Unknown file type: #{path}"
	  end
	end
end

