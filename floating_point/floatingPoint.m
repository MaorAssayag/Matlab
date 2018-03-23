
function [s ,m ,e,mantisaLargeThan1] = floatingPoint(x, b)
%FLOATINGPOINT x - the number b - the base, s - sign of x, m - mentisa, e -
%exponnent : x = (s * [m]_base * m^e)
temp = 0;
counter = 0;
mantisaLargeThan1 = 0;
s = 0;
if (x > 0)
    s = 1;
else
    s = -1;
end

x = abs(x);
temp = x; % for now on we will work on temp as the |x|

if (x >= 1) 
    while (temp >= 1) && (counter < (b^3)-1)
        temp = temp / b;
        counter = counter +1; 
    end
    if (temp > 1)
        mantisaLargeThan1 = 1;
    end
else
    counter = 0;
end
e = toBits(counter,b,3); 
m = toBits(temp,b,8);
end
