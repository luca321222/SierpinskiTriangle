public void setup()
{
  size(1000, 1000);
}
public void draw()
{
  background(0);
  sierpinski(0, 1000, 500);
}
public void sierpinski(int x, int y, int len) 
{
  if (len > 0)
  {
    triangle(x, y, x + len/2, y - len, x + len, y);
    sierpinski(x, y , len/2);
    sierpinski(x + len, y, len/2);
    sierpinski(x + len/2, y - len, len/2);
  }
}
