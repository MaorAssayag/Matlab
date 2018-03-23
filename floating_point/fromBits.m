function [n] = fromBits(N, base, isMoreThan1)
len = size(N);
counter = 0;
n = 0;
while (counter < len(2))
    if (isMoreThan1 == 1)
        n = n + N(1,len(2)-counter) * (base^counter);
        counter = counter +1;
    else
        n = n + N(1,counter+1) * ((1/base)^(counter+1));
        counter = counter +1;
    end
end
end
