% STP - Projekt 1 - Zadanie 47 - Jakub Sikora
% Rysowanie wykresów na podstawie przeprowadzonej symulacji

zad4_setparam;

% Stwórz folder na wykresy jeœli jeszcze nie istnieje
if(exist('figures', 'dir') == 0)
    mkdir('figures');
end

if(exist('figures\zad4', 'dir') == 0)
    mkdir('figures\zad4');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% symulacja 1 - warunki poczatkowe [0 0 0]

% Symulacja testowa
sim('zad4');

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
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 80 60]); %x_width=10cm y_width=15cm
set(gcf,'PaperPositionMode','auto');
print(name,'-dpng','-r0');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% symulacja 2 - warunki poczatkowe [1 0 0]


% Zmiana warunków pocz¹tkowych
x1_ini = 1;

% Symulacja 
sim('zad4');

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
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 80 60]); %x_width=10cm y_width=15cm
set(gcf,'PaperPositionMode','auto');
print(name,'-dpng','-r0');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% symulacja 3 - warunki poczatkowe [0 1 0]


% Zmiana warunków pocz¹tkowych
x1_ini = 0;
x2_ini = 1;

% Symulacja 
sim('zad4');

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
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 80 60]); %x_width=10cm y_width=15cm
set(gcf,'PaperPositionMode','auto');
print(name,'-dpng','-r0');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% symulacja 4 - warunki poczatkowe [0 0 1]


% Zmiana warunków pocz¹tkowych
x2_ini = 0;
x3_ini = 1;

% Symulacja 
sim('zad4');

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
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 80 60]); %x_width=10cm y_width=15cm
set(gcf,'PaperPositionMode','auto');
print(name,'-dpng','-r0');
hold off;