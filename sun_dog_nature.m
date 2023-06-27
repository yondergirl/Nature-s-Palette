% Nature's Palette 
% A program to generate vibrant images of nature in Matlab

clear; clc; close all % Initialize 

% Create an empty matrix for our image 
img = zeros(500, 500, 3);

% Generate a random cloud-like pattern 
for y = 1:500
    for x = 1:500
        img(x, y, 1) = (x + noise(1))/500;
        img(x, y, 2) = (y + noise(1))/500;
        img(x, y, 3) = noise(1)/2;
    end
end 

% Add a random forest-like pattern 
for y = 1:500
    for x = 1:500
        img(x, y, 1) = noise(2);
        img(x, y, 2) = img(x, y, 2) + 0.8*noise(2);
        img(x, y, 3) = img(x, y, 3) + 0.2*noise(2);
    end
end 

% Smooth the image to reduce camera noise
img = wiener2(img, [3,3]);

% Add a textured sky 
for y = 1:500
    for x = 1:500
        img(x, y, 1) = 0.5*noise(3);
        img(x, y, 2) = 0.5*(noise(3) + 0.2*noise(4));
        img(x, y, 3) = 0.5*(noise(3) + 0.2*noise(5));
    end
end

% Smooth the image again to reduce camera noise 
img = wiener2(img, [3,3]);

% Add a sun in the top-right corner 
img(450:500, 450:500, 1) = 0.8*noise(6);
img(450:500, 450:500, 2) = 0.8*noise(6);
img(450:500, 450:500, 3) = 0.8*noise(6);

% Adjust the hue of each channel to enhance the colors 
img(:, :, 1) = img(:, :, 1)*0.7;
img(:, :, 2) = img(:, :, 2)*0.8;
img(:, :, 3) = img(:, :, 3)*1.1;

% Adjust the brightness to create a natural look 
img = img*1.2;

% Sharpen the image to make it clearer 
img = imsharpen(img, 'Radius', 2);

% Apply a gamma correction to make colors more vibrant 
img = imadjust(img, [], [], 0.5);

% Display the image 
imshow(img);

%%%%%%%%%%%%%%%%%%%%%%%%%%

% Helper functions 

% Add random noise to a single pixel
function pixel = noise(scale)
    pixel = (rand - 0.5)*scale;
end