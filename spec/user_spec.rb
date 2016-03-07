require 'user'
RSpec.describe User do 
before :each do
  @user = User.new "Name", "Age"
end

describe "#new" do
  it "takes two parameters and returns a User object" do
    @user.should be_an_instance_of User
  end
end

describe "#name" do
  it "returns the correct name" do
    @user.name.should eql "Name"
  end
end

describe "#age" do
  it "returns the correct age" do
    @user.age.should eql "Age"
  end
end

describe "#to_hash" do
  it "returns a hash of the object attributes" do
    @user.to_hash.keys.should eql ["name", "age"]
  end
end
  
end