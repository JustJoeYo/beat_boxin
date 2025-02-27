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
      expect(@list).to be_an_instance_of(LinkedList) # list = LinkedList.new
    end

    it '#attributes' do
      expect(@list.head).to eq(nil)
    end
  end

  describe 'methods' do
    it '#append' do
      @list.append('doop')
      expect(@list.head.data).to eq('doop') 
      expect(@list.head.next_node).to eq(nil)

      @list.append('deep')
      expect(@list.head.next_node.data).to eq('deep')
      expect(@list.head.next_node.next_node).to eq(nil)
    end

    it '#count' do
      @list.append('doop')
      expect(@list.count).to eq(1)

      @list.append('deep')
      expect(@list.count).to eq(2)
    end

    it '#to_string' do
      @list.append('doop')
      expect(@list.to_string).to eq('doop')

      @list.append('deep')
      expect(@list.to_string).to eq('doop deep')
    end
  end
end