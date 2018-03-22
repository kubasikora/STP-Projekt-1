% STP - Projekt 1 - Zadanie 47 - Jakub Sikora
% Wyznaczanie transmitancji dyskretnej przy wykorzystaniu pakietu Matlab

% Dane zadania 
Tp = 0.25;
nominator = poly([-2.5 -7]);
denominator = poly([8 -9 -10]);

% Stworzenie systemu dyskretnego na podstawie systemu ci¹g³ego
continous = tf(nominator, denominator);
discrete = c2d(continous,Tp,'zoh');

% Odtworzenie licznika i mianownika transmitancji
num = cell2mat(discrete.num);
den = cell2mat(discrete.den);

% Wypisanie transmitancji na ekran 
disp('Transmitancja dyskretna:');
disp(['      ', num2str(num(2)), ' ',format_var(num(3)), 'z^-1 ', format_var(num(4)), 'z^-2']);
disp('   -----------------------------------------');
disp(['   ', num2str(den(1)), ' ',format_var(den(2)), 'z^-1 ', format_var(den(3)), 'z^-2 ', format_var(den(4)), 'z^-3']);




