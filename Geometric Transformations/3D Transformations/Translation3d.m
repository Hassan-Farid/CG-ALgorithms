%Creating program to perform 3D Geometric Translation on an object
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

%Entering info regarding translation vector
fprintf('\nTranslation in x-axis:');
a = input('');
fprintf('\nTranslation in y-axis:');
b = input('');
fprintf('\nTranslation in z-axis:');
c = input('');

%Creating translation matrice T
T = [1 0 0 a; 0 1 0 b; 0 0 1 c; 0 0 0 1];

%Creating the transformed object R
R = T*P;

%Plotting objects P and R on the screen
fill3(P(1,:),P(2,:),P(3,:),'r');
hold on;
fill3(R(1,:),R(2,:),R(3,:),'g');

%Creating x,y and z values on axes lines
xlim([-20,20]);
ylim([-20,20]);
zlim([-20,20]);

%End of program