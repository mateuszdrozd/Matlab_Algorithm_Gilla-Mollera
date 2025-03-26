format long
n=16;

suma=0;
x="Zadanie 1"
for i=1:n
    suma=(1/i)+suma;
    wektor(i)=suma;
end
wektor
suma
n=16;

%algorytm Gilla-Mulerra

% Działanie:
% Algorytm działa poprzez wprowadzenie dodatkowych zmiennych,
% które śledzą błędy zaokrągleń i poprawiają bieżącą sumę.
% Kluczowym elementem jest tutaj resztkowa suma,
% która jest korygowana na każdym etapie iteracji,
% aby uwzględnić błędy wynikające z ograniczonej precyzji arytmetyki zmiennoprzecinkowej.

% Historia:
% Algorytm ten został opracowany przez Philippe'a Gilla i Helgi Mullera'
% w latach 60. XX wieku. Był częścią ich pracy nad metodami numerycznymi,
% które miały na celu poprawę dokładności obliczeń w zastosowaniach naukowych i inżynierskich.

% Zalety:
% Dokładność: Zwiększa dokładność sumowania poprzez minimalizację błędów zaokrągleń.
% Stabilność: Jest bardziej stabilny numerycznie w porównaniu do prostego sumowania sekwencyjnego.
% Elastyczność: Może być stosowany do różnych typów szeregów, w tym tych z szybko zanikającymi elementami.

% Algorytm Gill-Mullera jest cennym narzędziem w obliczeniach numerycznych, 
% szczególnie tam, gdzie dokładność sumowania ma kluczowe znaczenie. 
% Dzięki uwzględnieniu i korekcji błędów zaokrągleń, algorytm ten zapewnia 
% większą precyzję wyników, co jest niezwykle istotne w naukach ścisłych i inżynierii.

u=0;p=0;
for i=1:n
v=1/i; %i-ty wyraz sumowanego ciagu
s=u+v;
p=u-s+v+p;
u=s;
end
z=s+p

u=0;p=0;
for i=1:n
v=i; %i-ty wyraz sumowanego ciagu
s=u+v;
p=u-s+v+p;
u=s;
end
z=s+p
%Sumowanie kolejnych liczb zwykłym sposobem
s1=0;
for i=1:n
    s1=s1+i;
end
s1

%algorytm Gilla-Mulerra
u=0;p=0;
for i=1:n
v=1/1000000*i; %i-ty wyraz sumowanego ciagu
s=u+v;
p=u-s+v+p;
u=s;
end
z=s+p

%algorytm Gilla-Mulerra
u=0;p=0;
for i=1:n
v=10000000000/i; %i-ty wyraz sumowanego ciagu
s=u+v;
p=u-s+v+p;
u=s;
end
z=s+p
A=[1 3 4 5 8 7 0.5 0.87];
sum(A);

%Suma 20 kolejnych wyrazów szeregu potegowego (1/3) 
x0 = 1;
x1 = 1/3;
m = 1/3;
suma3=1+1/3;
for n=2:40
    x2 = (13/3)*x1-(4/3)*x0;
    x0 = x1;
    x1 = x2;
    m = m/3;
    eps = x2 - m;
    suma3=suma3+x2;
end
suma3

%Sprwdzenie z algorytmem Gilla-Mulerra
u=0;p=0;
xn=1/3;
xn_1=1;
for i=2:40
v=((13/3)*xn)-((4/3)*(xn_1)); %i-ty wyraz sumowanego ciagu
s=u+v;
p=u-s+v+p;
u=s;
end

z=s+p

suma2=0;
for i=2:20
    suma2=(1/3)^i+suma2;
end
suma2
%Sprwdzenie z algorytmem Gilla-Mulerra
u=0;p=0;
for i=2:20
v=(1/3)^i; %i-ty wyraz sumowanego ciagu
s=u+v;
p=u-s+v+p;
u=s;
end
z=s+p

%Szereg Taylora 60 sumowań kolejncyh wyrazow podanego szeregu
t=-1:-1:-60;
x=2.^t;
y1=x-sin(x);
y2=((x.^3/6).*(1-x.^2./20.*(1-(x.^2)./42)));
y1-y2;

% Szereg Taylora
t=-1:-1:-60;
x=2.^t;
y1=1-cos(x);
y2=((x.^2)./2.*(1-(x.^2)./12.*(1-(x.^2)./30)));
y1-y2;

%dla e^x
u=0;p=0;
x=2;
for i=1:n
v=((x^i)/(factorial(i))); %i-ty wyraz sumowanego ciagu
s=u+v;
p=u-s+v+p;
u=s;
end
z=s+p


x1=2;
u=0;p=0;
for i=1:n
v=(((-1)^(i+1))*x1^(2*i))/(factorial(i)); %i-ty wyraz sumowanego ciagu
s=u+v;
p=u-s+v+p;
u=s;
end
z=s+p

% Parametry szeregu geometrycznego
a = 1; % pierwszy wyraz
r = 2; % iloraz
n = 5; % liczba wyrazów

% Suma szeregu
suma = a * (1 - r^n) / (1 - r);
disp(suma);


% Parametry szeregu
n = 5; % liczba wyrazów
suma = 0;

% Sumowanie szeregu przy użyciu pętli
for k = 1:n
    suma = suma + k;
end

disp(suma);

% Definiowanie funkcji szeregu
szereg = @(k) 1 / k^2;

% Liczba wyrazów
n = 5;
suma = 0;

% Sumowanie szeregu
for k = 1:n
    suma = suma + szereg(k);
end

disp(suma);

%Sprawdzenie z algorytmem 
n=5;
u=0;p=0;
for i=1:n
v=(1/i)^2; %i-ty wyraz sumowanego ciagu
s=u+v;
p=u-s+v+p;
u=s;
end
z=s+p

% Różne algorytmy
%% Algorytm Kahama
% Opis: Algorytm Kahana jest techniką kompensowanego sumowania, która minimalizuje błędy zaokrągleń poprzez utrzymywanie dodatkowej zmiennej kompensacyjnej.
% Historia: Został opracowany przez Williama Kahane w 1965 roku, aby poprawić dokładność sumowania w obliczeniach numerycznych.
% Zalety: Poprawia dokładność poprzez śledzenie błędów zaokrągleń.

% Przykład użycia
a = 1 ./ (1:10).^2; % Szereg 1/k^2 dla k od 1 do 10
suma = suma_szeregu_kahana(a);
disp(suma);

%% Alorytm Neumaira
% Opis: Jest ulepszoną wersją algorytmu Kahana, bardziej stabilną numerycznie.
% Historia: Został opracowany jako rozszerzenie algorytmu Kahana, aby poprawić jego stabilność.
% Zalety: Lepsza stabilność numeryczna w porównaniu do algorytmu Kahana.

% Przykład użycia
a = 1 ./ (1:10).^2; % Szereg 1/k^2 dla k od 1 do 10
suma = suma_szeregu_neumaira(a);
disp(suma);


%% Algorytm Cascade
% Opis: Sumuje elementy w parach, co zmniejsza błędy zaokrągleń.
% Historia: Stosowany w różnych formach od lat 80., algorytm ten optymalizuje proces sumowania dużych zbiorów danych.
% Zalety: Zmniejsza błędy zaokrągleń przy sumowaniu dużych zbiorów liczb.

% Przykład użycia
a = 1 ./ (1:10).^2; % Szereg 1/k^2 dla k od 1 do 10
suma = suma_szeregu_cascade(a);
disp(suma);

%% Algorytm Parzystości
% Opis: Sumuje elementy w parach, minimalizując błędy zaokrągleń.
% Historia: Jest często stosowany w obliczeniach naukowych i inżynierskich od lat 90.
% Zalety: Efektywny sposób na zmniejszenie błędów zaokrągleń.

% Przykład użycia
a = 1 ./ (1:10).^2; % Szereg 1/k^2 dla k od 1 do 10
suma = suma_szeregu_pairwise(a);
disp(suma);

%% Algorytm rozkładu blokowego
% Opis: Dzieli sumowanie na bloki, minimalizując błąd zaokrągleń.
% Historia: Stosowany w przetwarzaniu dużych zbiorów danych w obliczeniach równoległych.
% Zalety: Skuteczny dla dużych zbiorów danych.

% Przykład użycia
a = 1 ./ (1:10000).^2; % Szereg 1/k^2 dla k od 1 do 10000
suma = suma_szeregu_block(a);
disp(suma);

%% Sumowanie za pomocą transformacji Fouriera
% Opis: Używa transformacji Fouriera do sumowania szeregu w sposób bardziej stabilny numerycznie.
% Historia: Transformacja Fouriera jest stosowana w analizie sygnałów od połowy XX wieku.
% Zalety: Poprawia dokładność sumowania dla dużych zbiorów danych.

% Przykład użycia
a = 1 ./ (1:10).^2; % Szereg 1/k^2 dla k od 1 do 10
suma = suma_szeregu_fft(a);
disp(suma);




%% Sumowanie szeregu 5^k/k^2 dla 10 kroków
a = 5.^(1:10) ./ (1:10).^2; % Szereg 5^k/k^2 dla k od 1 do 10
format long
suma_szeregu_kahana1 = suma_szeregu_kahana(a)
suma_szeregu_neumaira2 = suma_szeregu_neumaira(a)
suma_szeregu_cascade3 = suma_szeregu_cascade(a)
suma_szeregu_pairwise4 = suma_szeregu_pairwise(a)
suma_szeregu_block5 = suma_szeregu_block(a)
n = 10;
u = 0; p = 0;
for i = 1:n
    v = (5^i)/(i^2);
    s = u + v;
    p = u - s + v + p;
    u = s;
end
sumaGillaMollera6=s+p
suma_zwykla=0;
for i = 1:n
    suma_zwykla = suma_zwykla + 5^i/i^2;
end
sumazwykla7=suma_zwykla

%% Sumowanie szeregu 1/k^2 dla 10000 kroków
a = 1 ./ (1:10000).^2; % Szereg 1/k^2 dla k od 1 do 10000
format long
suma_szeregu_kahana1 = suma_szeregu_kahana(a)
suma_szeregu_neumaira2 = suma_szeregu_neumaira(a)
suma_szeregu_cascade3 = suma_szeregu_cascade(a)
suma_szeregu_pairwise4 = suma_szeregu_pairwise(a)
suma_szeregu_block5 = suma_szeregu_block(a)
n = 100;
u = 0; p = 0;
for i = 1:n
    v = 1/i^2;
    s = u + v;
    p = u - s + v + p;
    u = s;
end
sumaGillaMollera6=s+p
suma_zwykla = 0;
for i = 1:n
    suma_zwykla = suma_zwykla + 1/i^2;
end
sumazwykla7=suma_zwykla

%% sumowanie szeregu 5^k/k^2 dla 100 kroków
format long
a = 5.^(1:100) ./ (1:100).^2; % Szereg 5^k/k^2 dla k od 1 do 100
suma_szeregu_kahana1 = suma_szeregu_kahana(a)
suma_szeregu_neumaira2 = suma_szeregu_neumaira(a)
suma_szeregu_cascade3 = suma_szeregu_cascade(a)
suma_szeregu_pairwise4 = suma_szeregu_pairwise(a)
suma_szeregu_block5 = suma_szeregu_block(a)
n = 100;
u = 0; p = 0;
for i = 1:n
    v = 5^i/i^2;
    s = u + v;
    p = u - s + v + p;
    u = s;
end
sumaGillaMollera6=s+p
suma_zwykla=0;
for i = 1:n
    suma_zwykla = suma_zwykla + ((5^i)/(i^2));
end
sumazwykla7=suma_zwykla

%% sumowanie szeregu 5^k/k^2 dla 1000000 kroków
a = 5.^(1:1000000) ./ (1:1000000).^2; % Szereg 5^k/k^2 dla k od 1 do 1000000
format long
suma_szeregu_kahana1 = suma_szeregu_kahana(a)
suma_szeregu_neumaira2 = suma_szeregu_neumaira(a)
suma_szeregu_cascade3 = suma_szeregu_cascade(a)
suma_szeregu_pairwise4 = suma_szeregu_pairwise(a)
suma_szeregu_block5 = suma_szeregu_block(a)
n = 1000000;
u = 0; p = 0;
for i = 1:n
    v = 5^i/i^2;
    s = u + v;
    p = u - s + v + p;
    u = s;
end
sumaGillaMollera6=s+p
suma_zwykla=0;
for i = 1:n
    suma_zwykla = suma_zwykla + ((5^i)/(i^2));
end
sumazwykla7=suma_zwykla

%% sumowanie szeregu (-1)^k*(1/(2*k+1)) dla 1000000 kroków
format long
a = (-1).^(0:1000000) .*(1./(2.*(0:1000000)+1)); % Szereg (-1)^k*(1/(2*k+1)) dla k od 0 do 1000000
suma_szeregu_kahana1 = suma_szeregu_kahana(a)
suma_szeregu_neumaira2 = suma_szeregu_neumaira(a)
suma_szeregu_cascade3 = suma_szeregu_cascade(a)
suma_szeregu_pairwise4 = suma_szeregu_pairwise(a)
suma_szeregu_block5 = suma_szeregu_block(a)
n = 1000000;
u = 0; p = 0;
for i = 0:n
    v = (((-1)^i)*(1/(2*i+1)));
    s = u + v;
    p = u - s + v + p;
    u = s;
end
sumaGillaMollera6=s+p
suma_zwykla=0;
for i = 0:n
    suma_zwykla = suma_zwykla + (((-1)^i)*(1/(2*i+1)));
end
sumazwykla7=suma_zwykla

%% sumowanie szeregu (-1)^k*(1/(2*k+1)) dla 10 kroków
a = (-1).^(0:10) .*(1./(2.*(0:10)+1)); % Szereg (-1)^k*(1/(2*k+1)) dla k od 0 do 10
format long
suma_szeregu_kahana1 = suma_szeregu_kahana(a)
suma_szeregu_neumaira2 = suma_szeregu_neumaira(a)
suma_szeregu_cascade3 = suma_szeregu_cascade(a)
suma_szeregu_pairwise4 = suma_szeregu_pairwise(a)
suma_szeregu_block5 = suma_szeregu_block(a)
n = 10;
u = 0; p = 0;
for i = 0:n
    v = (((-1)^i)*(1/(2*i+1)));
    s = u + v;
    p = u - s + v + p;
    u = s;
end
sumaGillaMollera6=s+p
suma_zwykla=0;
for i = 0:n
    suma_zwykla = suma_zwykla + (((-1)^i)*(1/(2*i+1)));
end
sumazwykla7=suma_zwykla

%% sumowanie szeregu (-1)^k*(1/(2*k+1)) dla 100000 kroków
a = (-1).^(0:100000) .*(1./(2.*(0:100000)+1)); % Szereg (-1)^k*(1/(2*k+1)) dla k od 0 do 100000
format long
suma_szeregu_kahana1 = suma_szeregu_kahana(a)
suma_szeregu_neumaira2 = suma_szeregu_neumaira(a)
suma_szeregu_cascade3 = suma_szeregu_cascade(a)
suma_szeregu_pairwise4 = suma_szeregu_pairwise(a)
suma_szeregu_block5 = suma_szeregu_block(a)
n = 100000;
u = 0; p = 0;
for i = 0:n
    v = (((-1)^i)*(1/(2*i+1)));
    s = u + v;
    p = u - s + v + p;
    u = s;
end
sumaGillaMollera6=s+p
suma_zwykla=0;
for i = 0:n
    suma_zwykla = suma_zwykla + (((-1)^i)*(1/(2*i+1)));
end
sumazwykla7=suma_zwykla
%% sumowanie szeregu 1/k! dla 10 kroków
a = 1./(factorial((1:10))); % Szereg 1/k! dla k od 1 do 10
format long
suma_szeregu_kahana1 = suma_szeregu_kahana(a)
suma_szeregu_neumaira2 = suma_szeregu_neumaira(a)
suma_szeregu_cascade3 = suma_szeregu_cascade(a)
suma_szeregu_pairwise4 = suma_szeregu_pairwise(a)
suma_szeregu_block5 = suma_szeregu_block(a)
n = 10;
u = 0; p = 0;
for i = 1:n
    v = 1/factorial(i);
    s = u + v;
    p = u - s + v + p;
    u = s;
end
sumaGillaMollera6=s+p
suma_zwykla=0;
for i = 1:n
    suma_zwykla = suma_zwykla + 1/factorial(i);
end
sumazwykla7=suma_zwykla

%% sumowanie szeregu 1/k! dla 10000 kroków
a = 1./(factorial((1:10000))); % Szereg 1/k! dla k od 1 do 10000
format long
suma_szeregu_kahana1 = suma_szeregu_kahana(a)
suma_szeregu_neumaira2 = suma_szeregu_neumaira(a)
suma_szeregu_cascade3 = suma_szeregu_cascade(a)
suma_szeregu_pairwise4 = suma_szeregu_pairwise(a)
suma_szeregu_block5 = suma_szeregu_block(a)
n = 10000;
u = 0; p = 0;
for i = 1:n
    v = 1/factorial(i);
    s = u + v;
    p = u - s + v + p;
    u = s;
end
sumaGillaMollera6=s+p
suma_zwykla=0;
for i = 1:n
    suma_zwykla = suma_zwykla + 1/factorial(i);
end
sumazwykla7=suma_zwykla