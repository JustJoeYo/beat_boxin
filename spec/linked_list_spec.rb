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

  describe 'methods' do
    it '#append' do
      @list.append('doop')
      expect(@list.head.data).to eq('doop')
    end

    it '#count' do
      @list.append('doop')
      expect(@list.count).to eq(1)
    end

    it '#to_string' do
      @list.append('doop')
      expect(@list.to_string).to eq('doop')
    end
  end
end