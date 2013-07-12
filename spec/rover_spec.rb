require 'spec_helper'

describe Rover do
  subject { Rover.new direction: 'n', position: { x: 1, y: 2 }}

  describe '#forward' do
    it 'should increment position to north' do
      subject.forward
      subject.position[:y].should == 3
      subject.position[:x].should == 1
    end
  end

  describe '#forward' do
    it 'should increment position to east' do
      subject.direction = 'e'
      subject.forward
      subject.position[:y].should == 2
      subject.position[:x].should == 2
    end
  end

  describe '#forward' do
    it 'should increment position to south' do
      subject.direction = 's'
      subject.forward
      subject.position[:y].should == 1
      subject.position[:x].should == 1
    end
  end

  describe '#forward' do
    it 'should increment position to west' do
      subject.direction = 'w'
      subject.forward
      subject.position[:y].should == 2
      subject.position[:x].should == 0
    end
  end
end
