clc 
clear
syms y x w beta
m=1;
for i=1.76*1e14:10e11:2.14*1e14

[solx,soly]=vpasolve(-tan(sqrt((.11*10^-16*y^2)*3.45^2-x^2)*10^-7)+((sqrt(x^2-(.11*10^-16*y^2)*1^2)/sqrt((.11*10^-16*y^2)*3.45^2-x^2))*(1)^2+sqrt(x^2-(.11*10^-16*y^2)*1.5^2)/sqrt((.11*10^-16*y^2)*3.45^2-x^2)*(1)^2)*(1-((sqrt(x^2-(.11*10^-16*y^2)*1^2)*sqrt(x^2-(.11*10^-16*y^2)*1.5^2))/(y^2-(.11*10^-16*x^2)*1^2))*(1)^2) == 0,y== i,'20001206562610440.68137792103943388');
result=solx;
%if(result>0 && result>176 && result<214)
 disp(result);
 beta(m)=result;
 w(m)=i;
 m=m+1;
 
%end



end
plot(beta,w);
