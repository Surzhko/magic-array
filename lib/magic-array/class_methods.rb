module ClassMethods
  def from_existing(pattern)
    build_array get_names(pattern)
  end

  private

  def get_names(pattern)
    constants.select{|constant| constant[pattern]}
  end

  def build_array(names)
    names.map{|name| const_get name }
  end
end
