function [x] = fromFloatingPoint(s, m, e, b, matisaLargeThan1)
exponent = 0;
mantisa = fromBits(m, b, matisaLargeThan1);
exponent = fromBits(e, b, 1);
x = s * mantisa * (b^exponent); % the reconstructor evaluation of x
% TODO : errors
end
