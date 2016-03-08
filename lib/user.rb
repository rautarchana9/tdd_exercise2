class User
  attr_accessor :name, :age
  def initialize (name, age)
    @name = name
    @age = age
  end

  def to_hash
    hash = {}
    instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
    hash
  end
end

