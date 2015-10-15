require_relative 'spec_helper'
require_relative '../lib/meowing_cat'
require_relative '../lib/box'

describe "Cat" do
  let(:maru) {Cat.new}  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let
  let(:fedex_box) {Box.new}

  it 'instantiates a new cat' do
    expect(maru).to be_a(Cat)
  end

  it 'instantiates a new box' do
    expect(fedex_box).to be_a(Box)
  end

  it 'has a name' do
    maru.name = "Maru"
    expect(maru.name).to eq("Maru")
  end

   it "is able to meow" do

    # STDOUT is a constant that ruby defines for you
    # that represents 'output' so that you can test
    # against puts and Input/Output (IO) methods
    expect(STDOUT).to receive(:puts).with("meow!")
    maru.meow
  end

  it "can get into a box" do
    fedex_box.size = 3
    maru.size = 2
    expect(STDOUT).to receive(:puts).with("Meow! I'm in the box!")
    maru.get_in_box(fedex_box)
  end

  it "is to fat" do
    fedex_box.size = 2
    maru.size = 4
    expect(STDOUT).to receive(:puts).with("Sad meow, I'm not in the box")
    maru.get_in_box(fedex_box)
  end
end
