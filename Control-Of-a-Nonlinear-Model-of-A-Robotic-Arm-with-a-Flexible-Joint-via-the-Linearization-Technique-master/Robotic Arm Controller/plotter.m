out.u

out.x2_output

hold on;
plot(out.tout,out.x2_output)
grid on;
title('X4');

saveas(gcf, [pwd '\x1.jpg']);
hold off;
