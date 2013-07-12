require 'spec_helper'

describe 'example run' do
let(:rover_1) { Rover.new direction: 'n', position: { x: 1, y: 2 }}
let(:rover_2) { Rover.new direction: 'e', position: { x: 3, y: 3 }}

  it 'rover_1 should end up at (1, 3) N and rover_2 should end up at (5, 1) E' do
    rover_1.move 'LMLMLMLMM'
    rover_1.direction.should == 'n'
    rover_1.position.should == { x: 1, y: 3 }

    rover_2.move 'MMRMMRMRRM'
    rover_2.direction.should == 'e'
    rover_2.position.should == { x: 5, y: 1 }
  end
end
