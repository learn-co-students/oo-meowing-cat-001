require_relative 'spec_helper'
require_relative '../lib/meowing_cat'
require_relative '../lib/box'

describe "Cat" do
  let(:maru) {Cat.new}  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

  it 'instantiates a new cat' do
    expect(maru).to be_a(Cat)
  end

  it 'has a name' do
    maru.name = "Maru"
    expect(maru.name).to eq("Maru")
  end

  it 'has a size' do
    maru.size = 2
    expect(maru.size).to eq(2)
  end

   it "is able to meow" do

    # STDOUT is a constant that ruby defines for you
    # that represents 'output' so that you can test
    # against puts and Input/Output (IO) methods
    expect(STDOUT).to receive(:puts).with("meow!")
    maru.meow
  end
end

describe "Box" do
  let(:fedex_box) {Box.new}

  it 'instantiates a new box' do
    expect(fedex_box).to be_a(Box)
  end

  it 'has a size' do
    fedex_box.size = 3
    expect(fedex_box.size).to eq(3)
  end
end