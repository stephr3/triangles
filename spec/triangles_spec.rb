require('triangles')
require('rspec')

describe('Triangles') do
  describe('#triangle_type') do
    it('Returns not a triangle, if any two sides add up to less than or equal to the third side') do
      test_triangle = Triangles.new(2,2,8)
      expect(test_triangle.triangle_type()).to (eq("not a triangle"))
    end
  end
end
