function suma = suma_szeregu_kahana(a)
    % Inicjalizacja sumy i błędu
    suma = 0.0;
    err = 0.0;

    % Iteracja przez wszystkie elementy szeregu
    for k = 1:length(a)
        y = a(k) - err;       % Skorygowanie bieżącego wyrazu o poprzedni błąd
        t = suma + y;         % Tymczasowa suma
        err = (t - suma) - y; % Obliczenie nowego błędu
        suma = t;             % Aktualizacja sumy
    end
end