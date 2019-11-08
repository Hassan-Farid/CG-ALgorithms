%Creating program to perform 2D Geometric Rotation on an object
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

%Entering info regarding rotation angle
fprintf('\nRotation angle for transfromed object in radians(use pi):');
t = input('');

%Creating rotational matrix Rt
Rt = [cos(t) -1*sin(t) 0; sin(t) cos(t) 0; 0 0 1];

%Creating the transformed object R
R = Rt*P;

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