class AddressBook

  require_relative "entry.rb"

  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone, email)
    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end

    @entries.insert(index, Entry.new(name, phone, email))
  end

  def remove_entry(entry)
    index = 0 
    @entries.each do |item|
      if entry == item
        break
      end
      index += 1 
    end

    @entries.delete_at(index)
  end
    
end