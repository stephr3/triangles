require('triangles')
require('rspec')

describe('Triangles') do
  describe('#triangle_type') do
    it('Returns not a triangle, if any two sides add up to less than or equal to the third side') do
      test_triangle = Triangles.new(2,2,8)
      expect(test_triangle.triangle_type()).to (eq("not a triangle"))
    end

    it('returns scalene if no sides are equal') do
      test_triangle = Triangles.new(2,3,4)
      expect(test_triangle.triangle_type()).to (eq('scalene'))
    end

    it('returns isosceles if exactly two sides are equal') do
      test_triangle = Triangles.new(2, 2, 3)
      expect(test_triangle.triangle_type()).to (eq('isosceles'))
    end

    it('returns equilateral if all sides are equal') do
      test_triangle = Triangles.new(2,2,2)
      expect(test_triangle.triangle_type()).to (eq('equilateral'))
    end
  end
end
