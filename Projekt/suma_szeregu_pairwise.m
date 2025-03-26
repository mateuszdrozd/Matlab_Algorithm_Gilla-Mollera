function suma = suma_szeregu_pairwise(a)
    n = length(a);
    if n == 0
        suma = 0;
    elseif n == 1
        suma = a;
    else
        mid = floor(n / 2);
        left = suma_szeregu_pairwise(a(1:mid));
        right = suma_szeregu_pairwise(a(mid+1:end));
        suma = left + right;
    end
end