# This is free and unencumbered software released into the public domain.

require_relative '../lib/dogma'

include Dogma

RSpec.describe Dogma::Angle do
  describe ".new()" do
    it "raises an ArgumentError" do
      expect { Angle.new }.to raise_error(ArgumentError)
    end
  end

  describe ".new(degrees: ...)" do
    it "constructs the angle from degrees" do
      expect(Angle.new(degrees: 0).to_f).to eq(0)
      expect(Angle.new(degrees: 90).to_f).to eq(0.5*Math::PI)
      expect(Angle.new(degrees: 180).to_f).to eq(Math::PI)
      expect(Angle.new(degrees: 360).to_f).to eq(2*Math::PI)
    end
  end

  describe ".new(radians: ...)" do
    it "constructs the angle from radians" do
      expect(Angle.new(radians: 0).to_f).to eq(0)
      expect(Angle.new(radians: 0.5*Math::PI).to_f).to eq(0.5*Math::PI)
      expect(Angle.new(radians: Math::PI).to_f).to eq(Math::PI)
      expect(Angle.new(radians: 2*Math::PI).to_f).to eq(2*Math::PI)
    end
  end

  describe ".new(turns: ...)" do
    it "constructs the angle from turns" do
      expect(Angle.new(turns: 0).to_f).to eq(0)
      expect(Angle.new(turns: 0.25).to_f).to eq(0.5*Math::PI)
      expect(Angle.new(turns: 0.5).to_f).to eq(Math::PI)
      expect(Angle.new(turns: 1).to_f).to eq(2*Math::PI)
    end
  end

  describe "#to_f" do
    it "returns the angle in radians" do
      expect(Angle.new(radians: 3.1415).to_f).to eq(3.1415)
    end
  end

  describe "#as_degrees" do
    it "returns the angle in degrees" do
      expect(Angle.new(degrees: 0).as_degrees).to eq(0)
      expect(Angle.new(degrees: 90).as_degrees).to eq(90)
      expect(Angle.new(degrees: 180).as_degrees).to eq(180)
      expect(Angle.new(degrees: 360).as_degrees).to eq(360)
    end
  end

  describe "#as_radians" do
    it "returns the angle in radians" do
      expect(Angle.new(degrees: 0).as_radians).to eq(0)
      expect(Angle.new(degrees: 90).as_radians).to eq(0.5*Math::PI)
      expect(Angle.new(degrees: 180).as_radians).to eq(Math::PI)
      expect(Angle.new(degrees: 360).as_radians).to eq(2*Math::PI)
    end
  end

  describe "#as_turns" do
    it "returns the angle in turns" do
      expect(Angle.new(degrees: 0).as_turns).to eq(0)
      expect(Angle.new(degrees: 90).as_turns).to eq(0.25)
      expect(Angle.new(degrees: 180).as_turns).to eq(0.5)
      expect(Angle.new(degrees: 360).as_turns).to eq(1)
    end
  end
end
