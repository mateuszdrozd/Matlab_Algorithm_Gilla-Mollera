function suma = suma_szeregu_cascade(a)
    while length(a) > 1
        n = length(a);
        m = floor(n / 2);
        a = [a(1:2:m*2-1) + a(2:2:m*2), a(m*2+1:end)];
    end
    suma = a;
end