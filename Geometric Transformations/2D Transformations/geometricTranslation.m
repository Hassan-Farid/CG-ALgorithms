%Creating program to perform 2D Geometric Translation on an object
clc;
clear;

%For actual object P
fprintf('Enter number of vertices of given shape: ');
n = input('');
%For coordinates of the given object P
for i=1:n
    fprintf('Enter x coordinate of pt.%d: ', i);
    x(i) = input('');
    fprintf('Enter y coordinate of pt.%d: ', i);
    y(i) = input('');
end

%Creating the given object P
P = ones(3,n);

P(1,:)=x;
P(2,:)=y;

%Entering info regarding translation vector
fprintf('\nTranslation in x-axis:');
a = input('');
fprintf('\nTranslation in y-axis:');
b = input('');

%Creating translation matrice T
T = [1 0 a; 0 1 b; 0 0 1];

%Creating the transformed object R
R = T*P;

%Plotting objects P and R on the screen
fill(P(1,:),P(2,:),'r');
hold on;
fill(R(1,:),R(2,:),'g');

%Creating axis lines
line([-20,20],[0,0]);
line([0,0],[-20,20]);

%Creating x and y values on axis lines
xlim([-20,20]);
ylim([-20,20]);

%End of program