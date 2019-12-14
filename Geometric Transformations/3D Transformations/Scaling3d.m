%Program to perform 3D Scaling Transformation

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
fprintf('\nScaling in x-axis:');
sx = input('');
fprintf('\nScaling in y-axis:');
sy = input('');
fprintf('\nScaling in z-axis:');
sz = input('');

%Creating scaling matrix
T = [sx 0 0 0; 0 sy 0 0; 0 0 sz 0; 0 0 0 1];
 
%Creating the transformed object R
R = T*P;

%Plotting actual object 'P'
fill3(P(1,:),P(2,:), P(3,:), [1,0,0]);

hold on;
%Plotting transformed object 'R'
fill3(R(1,:),R(2,:),R(3,:), [0 1 0]);

%End of program