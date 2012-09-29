function [x_e, y_e, z_e] = bbfk(x, y, theta, alpha, beta)

  a = 0.5;
  b = 0.3;

  c = sqrt( a^2 + b^2 - 2*a*b*cos(pi - beta) );
disp(['c: ' num2str(c)])

  gamma = acos( (b^2 - c^2 - a^2) / (-2*a*c) );
  z_e = ( c * sin(alpha + gamma) ) / sin( pi/2 );

disp(['combined angle: ' num2str(alpha + gamma)]);
  
  h = c*( sin(pi - (alpha+gamma+(pi/2))) ) / sin(pi/2);

  disp(h);

  y_e = h * sin(theta) + y;
  x_e = h * cos(theta) + x; 

end
