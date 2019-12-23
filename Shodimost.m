

N = 999;
eps = 1e-3;
point1 = [0 ; 0];
x = zeros(1, N + 1);
y = zeros(1, N + 1);

x(1) = 0.2;
y(1) = 0.1;
figure(1);
clf;
hold on
grid on
for b = 0 : 0.05 : 4
    for c = 0 : 0.05 : 3
       point2 = [c + b - 1; (c + b - 1)/b] / b;
       for i = 1 : N
            x(i + 1) = b * y(i);
            y(i + 1) = x(i) * (1 - x(i)) + c * y(i);
       end
       
       maxx = max(x(N - 200 : N+1));
       maxy = max(y(N - 200 : N+1));
       
       minx = min(x(N - 200 : N+1));
       miny = min(y(N - 200 : N+1));
       
       if abs(point1(1) - maxx) < 2*eps && abs(point1(1) - minx) < 2*eps && ...
          abs(point1(2) - maxy) < 2*eps && abs(point1(2) - miny) < 2*eps
            colour = "g.";
       elseif abs(point2(1) - maxx) < 2*eps && abs(point2(1) - minx) < 2*eps && ...
              abs(point2(2) - maxy) < 2*eps && abs(point2(2) - miny) < 2*eps
            colour = "b.";
       else
            colour = "r.";
       end
       plot(b, c , colour);
    end
end