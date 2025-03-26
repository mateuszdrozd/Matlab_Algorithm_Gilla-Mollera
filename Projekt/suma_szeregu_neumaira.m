function suma = suma_szeregu_neumaira(a)
    % Inicjalizacja sumy i błędu
    suma = 0.0;
    err = 0.0;

    % Iteracja przez wszystkie elementy szeregu
    for k = 1:length(a)
        temp = suma;
        suma = suma + a(k);
        if abs(temp) >= abs(a(k))
            err = err + ((temp - suma) + a(k));
        else
            err = err + ((a(k) - suma) + temp);
        end
    end

    suma = suma + err; % Dodanie skorygowanego błędu
end