int[] x;
int[] count;

void setup() {
  size(500, 500);

  x = new int[height];
  count = new int[height];
  for (int i = 0; i < height; i++) {
    count[i] = 30;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < height; i++) {
    if (count[i] < 30) {
      if (count[i] < 15) {
        line(x[i], i, x[i] + count[i]*10, i); //println(x, x[i] + count[i]*10); to find the length
      } else {
        line(x[i] + (count[i] - 15)*10, i, x[i] + 150, i); //println(x, x[i] + 150); same
      }
    }
    count[i]++;
  }

  if (mousePressed) {
    x[mouseY] = mouseX;
    count[mouseY] = 0;
  }
}
//println(x);
//println(i);
//[277] 100 or[227] 100, the program stunned so I have to forced quite after the first time I run it...
//499*"0"
//must have one 100 in [0]~[499]
//
//the highest possible value is.
//
