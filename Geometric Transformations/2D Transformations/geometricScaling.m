%Creating program to perform 2D Geometric Scaling on an object
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

%Entering info regarding scaling vector
fprintf('\nScaling in x-axis:');
sx = input('');
fprintf('\nScaling in y-axis:');
sy = input('');

%Creating scaling matrix S
S = [sx 0 0; 0 sy 0; 0 0 1];

%Creating the transformed object R
R = S*P;

%Plotting objects P and R
fill(P(1,:),P(2,:),'r');
hold on;
fill(R(1,:),R(2,:),'g');

%Creating axes lines
line([-20,20],[0,0]);
line([0,0],[-20,20]);

%Creating x and y values on axes lines
xlim([-20,20]);
ylim([-20,20]);

%End of program