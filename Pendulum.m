% Piper Morris 
% Matlab project one 
% 10/26/21

% Problem 3

clc, clear; 



% Parameters
L = 67; % m
g = 9.81; % m/s^2
wn = sqrt(g/L); % rad/s
w0 = 0.2; % rad/s
10
% Define a time vector using the frequency of the motion
fn = wn/(2*pi); % Hz
T = 1/fn; % s
t = [0:T/300:4*T]; % Four periods long − use T/300 as time resolution 
% Use the time description of theta:
theta = w0/wn*sin(wn*t);

for cnt = 1:length(t) %Each iteration of this for loop generates a frame to display
clf % After each display, erase the picture to obtain the animation effect
axis([-1.1*L/2 1.1*L/2 -1.1*L 0])
% Draw a line from (0,0) to the pendulum end at each time instant
xline = [0 L*sin(theta(cnt))];
yline = [0 -L*cos(theta(cnt))];
line(xline, yline)
xlabel('x (m)')
ylabel('y (m)')
% Now let’s plot the pendulum weight in Matlab
side = L/20;
xpatch = [L*sin(theta(cnt))+side L*sin(theta(cnt))+side L*sin(theta(cnt))-side L*sin(theta(cnt))-side];
ypatch = [-L*cos(theta(cnt))+side -L*cos(theta(cnt))-side -L*cos(theta(cnt))-side -L*cos(theta(cnt))+side];
patch(xpatch, ypatch, 'k')
pause(T/300) % Short pause ensures MATLAB will display the line
end 

