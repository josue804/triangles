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

  describe('#type') do
    it('returns equilateral when all sides are equal') do
      test_triangle = Triangle.new(10,10,10)
      expect(test_triangle.type()).to(eq("Equilateral"))
    end
    it('returns isosceles when two sides are equal') do
      test_triangle = Triangle.new(8,8,4)
      expect(test_triangle.type()).to(eq("Isosceles"))
    end
    it('returns scalene when no sides are equal') do
      test_triangle = Triangle.new(19,20,21)
      expect(test_triangle.type()).to(eq("Scalene"))
    end
  end
end
