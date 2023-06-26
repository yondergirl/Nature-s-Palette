# 'Nature's Palette' 
# a program which creates a vibrant display of nature's beauty

# Include libraries 
import matplotlib.pyplot as plt 
from matplotlib import cm 
import numpy as np

# Define a function which makes the colors more vibrant
def increase_color(r, g, b): 
	r += 5
	g += 5
	b += 5
	if (r > 255): 
		r = 255
	if (g > 255): 
		g = 255
	if (b > 255): 
		b = 255
	return (r, g, b) 

# Define the base colors 
blue = (0, 0, 255) 
yellow = (255, 255, 0) 
red = (255, 0, 0) 

# Create a color map 
cmap = cm.get_cmap('jet')

# Initialize figure 
fig = plt.figure(figsize=(15, 8)) 
ax1 = fig.add_subplot(1, 1, 1)

# Generate a meshgrid of coordinates 
X, Y = np.meshgrid(np.arange(0, 10, 1), np.arange(0, 10, 1)) 

# Generate the seed image 
seed_img = np.zeros((10, 10, 3)) 

# Populate the seed image with random pixels
for i in range(10): 
	for j in range(10): 
		if (np.random.randint(0, 2)): 
			seed_img[i][j] = blue 
		else: 
			seed_img[i][j] = yellow 

# Create the color map 
colors = np.zeros((100, 3)) 

# Color each pixel in the seed image 
for x in range(10): 
	for y in range(10): 
		colors[x * 10 + y] = seed_img[x][y] 

# Increase the colors to make them more vibrant 
for color in colors: 
	color = increase_color(color[0], color[1], color[2]) 

# Create the image 
img = ax1.imshow(cmap(colors)) 

# Set the title
plt.title("Nature's Palette")

# Display the image 
plt.show()