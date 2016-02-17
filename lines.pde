size(400, 400);
background(255);

for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    line(x, y, x+dx, y+dy);
    println(x, y, x+dx, y+dy);
}
}
//println(x);
//println(x, y);
//println(x, y, x+dx, y+dy);
//
//repeats 41 times. 41x41=1681
//
//total 1681 lines.
//
//horizontal lines means y are the same number.
//println(y, y+dy);
//horizontal line repeats at every 200 in each groups.
//we have 36 groups of 200.
//
//40 lines are horizontal.
//
//vertical lines means x are the same number.
//println(x, x+dx);
//println(x, y, x+dx, y+dy);
//
//40 lines are vertical.
//
//ignored (200, 200, 200, 200);
