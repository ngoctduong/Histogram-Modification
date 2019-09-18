function img_e = equalization(img)

h=histogram(img);

f = h/sum(sum(h));
c = zeros(size(h));
c(1) = f(1);
for i=1:size(h,1)-1    
    c(i+1) = c(i) + f(i+1);
end

v = floor(c*255+0.5);

img_e = zeros(size(img));
for i = 1:size(v,1)    
    img_n = (img==i-1)*v(i);
    img_e = img_e + img_n;
end


