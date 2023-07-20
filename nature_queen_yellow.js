const canvas = document.querySelector('#nature-canvas');
const ctx = canvas.getContext('2d');

//Store the colors of our palette 
const colors = [
  '#EF5350',
  '#42A5F5',
  '#66BB6A',
  '#FFCA28',
  '#FF7043',
  '#AB47BC',
  '#78909C',
  '#B0BEC5'
];

let mouse = {x: 0, y: 0};

// Create event listeners to track mouse position 
canvas.addEventListener('mousemove', (e) => {
  mouse.x = e.pageX - canvas.offsetLeft;
  mouse.y = e.pageY - canvas.offsetTop;
});

// Set fillStyle
ctx.fillStyle = 'black';

// Draw background
ctx.fillRect(0, 0, canvas.width, canvas.height);

// Set lineWidth
ctx.lineWidth = 10;

// Draw lines for individual shapes
for (let i = 0; i < colors.length; i++) {
ctx.strokeStyle = colors[i];
ctx.beginPath();
ctx.arc(
  canvas.width / colors.length * (i + .5),
  canvas.height / 2,
  canvas.height / 3,
  0,
  Math.PI * 2
);
ctx.stroke();
}

// Set lineWidth
ctx.lineWidth = 5;

// Draw circles for shape intersections
for (let i = 0; i < colors.length; i++) {
  ctx.fillStyle = colors[i];
  ctx.beginPath();
  ctx.arc(
    canvas.width / colors.length * (i + .5),
    canvas.height / 2,
    canvas.height / 3 - 10,
    0,
    Math.PI * 2
  );
  ctx.fill();
}

// Set lineWidth
ctx.lineWidth = 25;

// Draw a circle to follow mouse position 
ctx.strokeStyle = 'black';
ctx.beginPath();
ctx.arc(mouse.x, mouse.y, 35, 0, Math.PI * 2);
ctx.stroke();