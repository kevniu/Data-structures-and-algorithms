require_relative 'fixed_array'

describe FixedArray do
  describe "let" do
    let(:fixed_array) { FixedArray.new(10) }
    it "creates a new FixedArray with size" do
      expect(fixed_array.size).to eq 10
    end

    it "sets new element" do
      fixed_array.set(3, "hello")
      expect(fixed_array.get(3)).to eq "hello"
    end

    it "raises error if out of bonds" do
      expect { fixed_array.get(11) }.to raise_error("OutOFBoundsException")
    end

    it "raises error if out of bonds" do
      expect { fixed_array.set(11, 'hello') }.to raise_error("OutOFBoundsException")
    end

    it "returns nil for unset element" do
      expect(fixed_array.get(2)).to eq nil
    end

  end
end
