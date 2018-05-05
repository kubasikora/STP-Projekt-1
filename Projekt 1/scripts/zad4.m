% STP - Projekt 1 - Zadanie 47 - Jakub Sikora
% Rysowanie wykresów na podstawie przeprowadzonej symulacji

setparam;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% symulacja 1 - warunki poczatkowe [0 0 0]

% Symulacja testowa
sim('zad4_repr');

% Rysowanie wykresu
fig = figure('Name', 'Porównanie odpowiedzi skokowych transmitancji dyskretnej i modeli w przestrzeni stanów');
set(gcf, 'Position', [100, 100, 800, 600])
hold on;
grid on;
grid minor;
plot(disc_tf, '-g');
plot(state_1, '-r');
plot(state_2, '-b');
legend('Transmitancja dyskretna', 'Wariant 1', 'Wariant 2', 'Location', 'northeast');
title('Odpowiedzi skokowe, warunki pocz¹tkowe = [0 0 0]', 'FontName', 'Helvetica');
xlabel('Czas t');
ylabel('Wyjœcie modelu y');

% Zapis wykresu do pliku
name = strcat('figures\zad4\porownanie_0_0_0');
print_figure(name, 'figures\zad4')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% symulacja 2 - warunki poczatkowe [1 0 0]


% Zmiana warunków pocz¹tkowych
x1_ini = 1;

% Symulacja 
sim('zad4_repr');

% Rysowanie wykresu
fig = figure('Name', 'Porównanie odpowiedzi skokowych transmitancji dyskretnej i modeli w przestrzeni stanów');
set(gcf, 'Position', [100, 100, 800, 600])
hold on;
grid on;
grid minor;
plot(disc_tf, '-g');
plot(state_1, '-r');
plot(state_2, '-b');
legend('Transmitancja dyskretna', 'Wariant 1', 'Wariant 2', 'Location', 'northeast');
title('Odpowiedzi skokowe, warunki pocz¹tkowe = [1 0 0]', 'FontName', 'Helvetica');
xlabel('Czas t');
ylabel('Wyjœcie modelu y');

% Zapis wykresu do pliku
name = strcat('figures\zad4\porownanie_1_0_0');
print_figure(name, 'figures\zad4')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% symulacja 3 - warunki poczatkowe [0 1 0]


% Zmiana warunków pocz¹tkowych
x1_ini = 0;
x2_ini = 1;

% Symulacja 
sim('zad4_repr');

% Rysowanie wykresu
fig = figure('Name', 'Porównanie odpowiedzi skokowych transmitancji dyskretnej i modeli w przestrzeni stanów');
set(gcf, 'Position', [100, 100, 800, 600])
hold on;
grid on;
grid minor;
plot(disc_tf, '-g');
plot(state_1, '-r');
plot(state_2, '-b');
legend('Transmitancja dyskretna', 'Wariant 1', 'Wariant 2', 'Location', 'northeast');
title('Odpowiedzi skokowe, warunki pocz¹tkowe = [0 1 0]', 'FontName', 'Helvetica');
xlabel('Czas t');
ylabel('Wyjœcie modelu y');

% Zapis wykresu do pliku
name = strcat('figures\zad4\porownanie_0_1_0');
print_figure(name, 'figures\zad4')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% symulacja 4 - warunki poczatkowe [0 0 1]


% Zmiana warunków pocz¹tkowych
x2_ini = 0;
x3_ini = 1;

% Symulacja 
sim('zad4_repr');

% Rysowanie wykresu
fig = figure('Name', 'Porównanie odpowiedzi skokowych transmitancji dyskretnej i modeli w przestrzeni stanów');
set(gcf, 'Position', [100, 100, 800, 600])
hold on;
grid on;
grid minor;
plot(disc_tf, '-g');
plot(state_1, '-r');
plot(state_2, '-b');
legend('Transmitancja dyskretna', 'Wariant 1', 'Wariant 2', 'Location', 'northeast');
title('Odpowiedzi skokowe, warunki pocz¹tkowe = [0 0 1]', 'FontName', 'Helvetica');
xlabel('Czas t');
ylabel('Wyjœcie modelu y');

% Zapis wykresu do pliku
name = strcat('figures\zad4\porownanie_0_0_1');
print_figure(name, 'figures\zad4')