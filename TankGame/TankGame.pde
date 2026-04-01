// Tye Oswald | 1 Apr | Tank Game

let Boss;

function setup() {
  createCanvas(500, 500);
  Boss = new Tank();
}

function draw() {
  background(67);
  Boss.display();
}

function keyPressed() {
  if (key === 'w') {
    Boss.move('w');
  } else if (key === 'a') {
    Boss.move('a');
  } else if (key === 's') {
    Boss.move('s');
  } else if (key === 'd') {
    Boss.move('d');
  }
}

// --------------------
// Tank Class
// --------------------
class Tank {
  constructor() {
    this.x = 100;
    this.y = 100;
    this.w = 100;
    this.h = 100;
    this.speed = 10;
    this.health = 3;

    this.iTank = loadImage("Oswald.tank.png");
    this.iTankL = loadImage("Oswald.tankL.png");

    this.idir = 'a';
  }

  display() {
    imageMode(CENTER);

    if (this.idir === 'a') {
      image(this.iTankL, this.x, this.y);
    } else {
      image(this.iTank, this.x, this.y);
    }
  }

  move(dir) {
    this.idir = dir; // track direction

    if (dir === 'w') {
      this.y -= this.speed;
    } else if (dir === 's') {
      this.y += this.speed;
    } else if (dir === 'a') {
      this.x -= this.speed;
    } else if (dir === 'd') {
      this.x += this.speed;
    }
  }

  fire() {
    // future feature
  }
}
