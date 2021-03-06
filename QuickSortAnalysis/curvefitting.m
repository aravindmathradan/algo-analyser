function[] = curvefitting(text)

data = load(strcat("./testDatas/", text));
x = data(:, 1);
y = data(:, 2);

#theta = zeros(2, 1);
#plot(X, y, '+');
#hold on;
#X = [ones(length(X), 1), X];
#theta = inv(X' * X) * (X' * y);

#X = sort(X);
p = polyfit(x, y, 2);

X = linspace(min(x), max(x));
Y = polyval(p, X);
plot(X, Y, '-', x, y, 's');
legend('Fitted polynomial', 'Original Data');
hold off;

end
