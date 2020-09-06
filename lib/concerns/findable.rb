module Concerns::Findable
  # Module code here
  
  def find_by_name(name)
    all.find { |song| song.name == name}
  end
  
  def find_or_create_by_name(name)
    find_by_name(name) || create_by_name(name)
  end

  def create_by_name(name)
    create(name)
  end
  
end