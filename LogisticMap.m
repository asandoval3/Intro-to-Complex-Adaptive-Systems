% Define parameters
n = 100; % number of time steps
r1 = 3.8; % first value of r (chaotic)
r2 = 2.5; % second value of r (non-chaotic)
x0_1a = 0.5; % first initial condition for r1
x0_1b = 0.51; % second initial condition for r1
x0_2a = 0.2; % first initial condition for r2
x0_2b = 0.21; % second initial condition for r2

% Define logistic map function
f = @(r, x) r*x.*(1-x);

% Generate time series
t = 1:n;
x1a = zeros(1,n);
x1b = zeros(1,n);
x2a = zeros(1,n);
x2b = zeros(1,n);
x1a(1) = x0_1a;
x1b(1) = x0_1b;
x2a(1) = x0_2a;
x2b(1) = x0_2b;
for i = 2:n
    x1a(i) = f(r1, x1a(i-1));
    x1b(i) = f(r1, x1b(i-1));
    x2a(i) = f(r2, x2a(i-1));
    x2b(i) = f(r2, x2b(i-1));
end

% Plot time series
figure
subplot(2,2,1)
plot(t, x1a, 'b', 'LineWidth', 2)
hold on
plot(t, x1b, 'r', 'LineWidth', 2)
xlabel('Time')
ylabel('Population')
title(sprintf('r = %.1f (chaotic)', r1))
legend(sprintf('x_0 = %.2f', x0_1a), sprintf('x_0 = %.2f', x0_1b))

subplot(2,2,2)
plot(t, x2a, 'b', 'LineWidth', 2)
hold on
plot(t, x2b, 'r', 'LineWidth', 2)
xlabel('Time')
ylabel('Population')
title(sprintf('r = %.1f (non-chaotic)', r2))
legend(sprintf('x_0 = %.2f', x0_2a), sprintf('x_0 = %.2f', x0_2b))

subplot(2,2,3)
plot(t, x1a, 'b', 'LineWidth', 2)
hold on
plot(t, x1b, 'r', 'LineWidth', 2)
xlabel('Time')
ylabel('Population')
title(sprintf('r = %.1f (chaotic)', r1))
legend(sprintf('x_0 = %.2f', x0_1a), sprintf('x_0 = %.2f', x0_1b))

subplot(2,2,4)
plot(t, x2a, 'b', 'LineWidth', 2)
hold on
plot(t, x2b, 'r', 'LineWidth', 2)
xlabel('Time')
ylabel('Population')
title(sprintf('r = %.1f (non-chaotic)', r2))
legend(sprintf('x_0 = %.2f', x0_2a), sprintf('x_0 = %.2f', x0_2b))
