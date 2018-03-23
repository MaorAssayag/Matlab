function [N] = toBits(n,base,numOfDigits)
N = [];
counter = 1;
temp = n;
if (n < 1)
    while temp ~= 0 && counter <= numOfDigits
        temp = temp*base;
        counter2 = 0;
        while(temp>=1)
            counter2 = counter2 +1;
            temp = temp - 1;
        end
        N = [N,counter2]; 
        counter = counter +1;
    end
    while (counter <= numOfDigits)
        N = [N,0];
        counter = counter +1;
    end

else
    while n ~= 0 && counter <= numOfDigits
      N = [mod(n,base),N];
      counter = counter +1;
      n = (n - N(1))/base;
    end
    while (counter <= numOfDigits)
        N = [0,N];
        counter = counter +1;
    end
end  
end

