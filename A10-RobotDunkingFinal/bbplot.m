function ret = bbplot(x, y, theta, alpha, beta)

a = 0.5;
b = 0.3;

base = [x y 0];

proj1 = (a * sin(pi - (alpha+pi/2)))/sin(pi/2);

joint1 = [x + proj1*cos(theta) ...
          y + proj1*sin(theta) ...
	  a * sin(alpha)];
	  
proj2 = (b * sin(pi - (beta+alpha+pi/2)))/sin(pi/2);

joint2 = [joint1(1) + proj2*cos(theta) ...
       	  joint1(2) + proj2*sin(theta) ...
	  joint1(3) + b*sin(beta)];

ret = [base; joint1; joint2];
end
