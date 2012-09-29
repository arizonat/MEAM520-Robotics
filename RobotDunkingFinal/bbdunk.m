function bbdunk(xi, yi, thetai, alphai, betai)
x = xi;
y = yi;
theta = thetai;
alpha = alphai;
beta = betai

  while(1)

    nextpoint = bbplot(x,y,theta,alpha,beta)
      line([nextpoint(1,1) nextpoint(1,2)],
	   [nextpoint(1,2) nextpoint(1,3)],
	   [nextpoint(1,3) nextpoint(1,4)]

  end


end
