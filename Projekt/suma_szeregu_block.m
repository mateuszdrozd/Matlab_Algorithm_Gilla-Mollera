function suma = suma_szeregu_block(a, blockSize)
    if nargin < 2
        blockSize = 1000; % Domyślna wielkość bloku
    end
    
    n = length(a);
    suma = 0;
    for i = 1:blockSize:n
        blockEnd = min(i + blockSize - 1, n);
        suma = suma + sum(a(i:blockEnd));
    end
end