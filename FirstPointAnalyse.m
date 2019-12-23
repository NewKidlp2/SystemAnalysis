hold on;
grid on;
for b = 0.1 : 0.1 : 3
    for c = 0.1 : 0.1 : 3
        if (abs((c + sqrt(c^2 - 4 * b)) / 2) < 1) && (abs((c - sqrt(c^2 - 4 * b)) / 2) < 1)
            plot(b, c, "g.");
        else
            plot(b, c, "r.");
        end
    end
end