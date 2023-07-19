clc;
clear;
close all;

%%Define Nature's Colors
red = [255, 0, 0];
orange = [255, 160, 0];
yellow = [255, 255, 0];
green = [0, 255, 0];
blue = [0, 0, 255];
indigo = [105, 0, 255];
violet = [255, 0, 255];

colors = [red; orange; yellow; green; blue; indigo; violet];

%%Create Plot
scatter(1:7, 1:7,'s','filled'), hold on
for x = 1:7
    set(scatter(x, x, 45, colors(x,:)/255), 'MarkerEdgeColor','k');
end

%%Graph Labels
title('Nature''s Palette')
xlabel('Colors')
ylabel('Rainbow')
axis([0 8 0 8])

%Label Colors
text(1, 1.5, 'Red')
text(2, 1.5, 'Orange')
text(3, 1.5, 'Yellow')
text(4, 1.5, 'Green')
text(5, 1.5, 'Blue')
text(6, 1.5, 'Indigo')
text(7, 1.5, 'Violet')