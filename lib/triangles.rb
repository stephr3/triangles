class Triangles
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:triangle_type) do
    if (@a + @b).<=(@c) || (@c + @b).<=(@a) || (@a + @c).<=(@b)
      "not a triangle"
    elsif (@a==@b) || (@b==@c) || (@c==@a)
      'isosceles'
    elsif (@a!=@b) && (@a!=@c) && (@b!=@c)
      "scalene"
    end
  end
end
