function suma = suma_szeregu_fft(a)
    n = length(a);
    if mod(n, 2) ~= 0
        a = [a, 0]; % Dopisanie zera, jeśli liczba elementów nieparzysta
    end
    A = fft(a);
    A(2:end) = 0;
    suma = real(ifft(A) * n);
end