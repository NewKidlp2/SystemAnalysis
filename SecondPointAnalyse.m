hold on;
grid on;
for b = 0.1 : 0.1 : 3
    for c = 0.1 : 0.1 : 1.5
        if (abs((c + sqrt(c^2 - 4 * b * (1 - 2*(b + c - 1)/b))) / 2) < 1) && (abs((c - sqrt(c^2 - 4 * b * (1 - 2*(b + c - 1)/b))) / 2) < 1)
            plot(b, c, "g.");
        else
            plot(b, c, "r.");
        end
    end
end