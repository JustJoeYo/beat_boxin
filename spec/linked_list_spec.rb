require 'spec_helper'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe LinkedList do
  before(:each) do
    @list = LinkedList.new
  end

  describe "initialization" do
    it "#initialize" do
      expect(@list).to be_an_instance_of(LinkedList)
    end

    it '#attributes' do
      expect(@list.head).to eq(nil)
    end
  end
end