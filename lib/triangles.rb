class Triangles
  define_method(:initialize) do |a, b, c|
    @a = a.to_i()
    @b = b.to_i()
    @c = c.to_i()
  end

  define_method(:triangle_type) do
    if (@a + @b).<=(@c) || (@c + @b).<=(@a) || (@a + @c).<=(@b)
      "not a triangle"
    elsif (@a==@b) && (@b==@c) && (@c==@a)
      "equilateral"
    elsif (@a==@b) || (@b==@c) || (@c==@a)
      'isosceles'
    else
      "scalene"
    end
  end
end

# (@a!=@b) && (@a!=@c) && (@b!=@c)
