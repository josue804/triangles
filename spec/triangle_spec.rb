require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    it("returns true when the fed in dimensions create a triangle") do
      test_triangle = Triangle.new(4,5,6)
      expect(test_triangle.triangle?()).to(eq(true))
    end

    it('returns false when the fed in dimensions aren\'t a triangle') do
      test_triangle = Triangle.new(4,5,12)
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end
end
