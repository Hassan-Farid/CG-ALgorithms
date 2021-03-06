%Program to perform 2D coordinate scaling transformation

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

%Entering info about scaling vector
fprintf('\nScaling factor along x-axis:');
sx = input('');
fprintf('\nScaling factor along y-axis:');
sy = input('');

%Creating translation matrix
S = [1/sx 0 0; 0 1/sy 0];

subplot(2,1,1);
fill(P(1,:),P(2,:),'m');

%Plotting actual line
line([-20,20],[0,0], 'Color', 'blue');
line([0,0],[-20,20], 'Color', 'blue');

subplot(2,1,2);
fill(P(1,:), P(2,:), 'y');

%Line Matrix(For Axes)
%For x-axis
xL = [-20 20; 0 0; 1 1];
%For y-axis
yL = [0 0; -20 20; 1 1];

%Creating transformed scaled Line Matrices
%For x-axis
xT = S*xL;
%For y-axis
yT = S*yL;

%Plotting transformed line
line(xT(1,:), xT(2,:) , 'Color', 'red');
line(yT(1,:), yT(2,:) , 'Color', 'red');

%End of program