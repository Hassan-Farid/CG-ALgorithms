%Creating program to perform 3D Geometric Rotation on an object

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

%Entering the type of rotation to perform
fprintf('\nEnter the choice of rotation you want to perform: ');
fprintf('\n1. Rotation along z-axis ');
fprintf('\n2. Rotation along x-axis ');
fprintf('\n3. Rotation along y-axis ');
choice = input('\n');

if choice == 1
    %Entering info regarding rotation vector about z axis
    fprintf('\nRotation angle about z-axis(in radians): ')
    t = input('');

    %Creating translation matrice
    T = [cos(t) -1*sin(t) 0 0; sin(t) cos(t) 0 0; 0 0 1 0; 0 0 0 1];

elseif choice == 2
%Entering info regarding rotation vector about x axis
    fprintf('\nRotation angle about x-axis(in radians): ')
    t = input('');

    %Creating translation matrice
    T = [1 0 0 0; 0 cos(t) -1*sin(t) 0; 0 sin(t) cos(t) 0; 0 0 0 1];

elseif choice == 3
    %Entering info regarding rotation vector about y axis
    fprintf('\nRotation angle about y-axis(in radians): ')
    t = input('');

    %Creating translation matrice
    T = [cos(t) 0 sin(t)  0; 0 1 0 0; -1*sin(t) 0 cos(t) 0; 0 0 0 1];  

end

%Creating the transformed object R
R = T*P;

fill3(P(1,:),P(2,:), P(3,:), [1,0,0]);

hold on;
fill3(R(1,:),R(2,:),R(3,:), [0 1 0]);

%End of program