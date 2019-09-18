function res=stretch(img, a, b, va, vb)
    [M, N]=size(img);
    res=zeros(M, N);
    alpha=va/a;
    beta=(vb-va)/(b-a);
    omega=(255-vb)/(255-b);
    for i=1:M
        for j=1:N
            if img(i, j) < a
                res(i, j)=floor(img(i, j)*alpha);
            elseif img(i, j) < b
                res(i,j)=floor(beta*(img(i, j)-a)+va);
            else
                res(i,j)=floor(omega*(img(i, j)-b)+vb);
            end
        end
    end
end

