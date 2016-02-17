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
        line(x[i], i, x[i] + count[i]*10, i); //println(x[i], i, x[i] + count[i]*10, i); to find the length
      } else {
        line(x[i] + (count[i] - 15)*10, i, x[i] + 150, i); //println(x, x[i] + 150); same
      }
      println(x[i], i, x[i] + count[i]*10, i);
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
//
//the highest possible value is 499.
//
//404-144=260; 379-99=280; 387-97=290; 412-122=290; 420-130=290; 338-48=290; 514-224=290;548-258=290
//187-137=50
//
//the length of the fifth drawn segment is 50.
