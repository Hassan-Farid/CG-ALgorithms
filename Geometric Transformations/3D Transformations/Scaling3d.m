%Creating program to perform 3D Geometric Scaling on an object
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
    fprintf('Enter z coordinate of pt.%d: ', i);
    z(i) = input('');
end

%Creating the given object P
P = ones(4,n);

P(1,:)=x;
P(2,:)=y;
P(3,:)=z;

%Entering info regarding scaling vector
fprintf('\nScaling factor along x-axis:');
sx = input('');
fprintf('\nScaling factor along y-axis:');
sy = input('');
fprintf('\nScaling factor along z-axis:');
sz = input('');

%Creating scaling matrix S
S = [sx 0 0 0; 0 sy 0 0; 0 0 sz 0; 0 0 0 1];

%Creating the transformed object R
R = S*P;

%Plotting objects P and R on the screen
fill3(P(1,:),P(2,:),P(3,:), 'r');
hold on;
fill3(R(1,:),R(2,:),R(3,:), 'g');

%Creating x,y and z values on axes lines
xlim([-20,20]);
ylim([-20,20]);
zlim([-20,20]);

%End of program