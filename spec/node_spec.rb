require 'spec_helper'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Node do
  before(:each) do
    @node = Node.new("plop")
  end

  describe "initialization" do
    it "#initialize" do
      expect(@node).to be_an_instance_of(Node)
    end

    it '#attributes' do
      expect(@node.data).to eq("plop")
      expect(@node.next_node).to eq(nil)
    end
  end

end