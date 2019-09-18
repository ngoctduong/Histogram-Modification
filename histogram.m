function v = histogram(im)
B = 256;
v = zeros(B,1);

for i=1:B
   v(i) = sum(sum(im==i-1));
end