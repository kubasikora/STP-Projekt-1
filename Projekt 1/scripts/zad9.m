clear
setparam

x1_ini = 1;
x2_ini = -5;
x3_ini = 1;

A = [7.576 1 0; -1.3904 0 1; 0.0636 0 0];
B = [0.4496; -0.3684; 0.0464];

% bieguny z0 i z1 obserwatora
z0 = [0.2 0.8 -0.3 0];
z1 = [0.2 0.8 -0.3 0];


for i=1:4
    % lokacja biegunow obserwatora
    l1 = -(z0(i)+z1(i));
    l2 = z0(i)*z1(i);
    
    % lokacja biegunow regulatora
    K = acker(A,B, [0.3 0.3 0.3]);
    
    sim('zad9_obsw')
    
    fig = figure('Name', 'Porównanie drugiej zmiennej stanu');
    set(gcf, 'Position', [400, 400, 400, 340]);
    hold on;
    plot(x2_out);
    plot(x2_obs);
    legend('Wartoœæ z obiektu', 'Wartoœæ z obserwatora', 'Location', 'southeast');
    title('Porównanie drugiej zmiennej stanu - regulator 1', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Zmienna stanu x2');
    grid on;
    grid minor;

    name = strcat('figures\zad9\regulator1_x2_', num2str(i));
    print_figure(name, 'figures\zad9')

    fig = figure('Name', 'Porównanie trzeciej zmiennej stanu');
    set(gcf, 'Position', [400, 400, 400, 340])
    hold on;
    plot(x3_out);
    plot(x3_obs);
    legend('Wartoœæ z obiektu', 'Wartoœæ z obserwatora', 'Location', 'southeast');
    title('Porównanie trzeciej zmiennej stanu - regulator 1', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Zmienna stanu x3');
    grid on;
    grid minor;

    name = strcat('figures\zad9\regulator1_x3_', num2str(i));
    print_figure(name, 'figures\zad9')

    % drugi regulator
    K = acker(A,B, [0.2 0.5+0.1j 0.5-0.1j]);

    sim('zad9_obsw')

    % po³o¿enie biegunów
    fig = figure('Name', 'Porównanie drugiej zmiennej stanu');
    set(gcf, 'Position', [400, 400, 400, 340]);
    hold on;
    plot(x2_out);
    plot(x2_obs);
    legend('Wartoœæ z obiektu', 'Wartoœæ z obserwatora', 'Location', 'southeast');
    title('Porównanie drugiej zmiennej stanu - regulator 2', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Zmienna stanu x2');
    grid on;
    grid minor;

    name = strcat('figures\zad9\regulator2_x2_', num2str(i));
    print_figure(name, 'figures\zad9')

    fig = figure('Name', 'Porównanie trzeciej zmiennej stanu');
    set(gcf, 'Position', [400, 400, 400, 340]);
    title('Porównanie trzeciej zmiennej stanu');
    hold on;
    plot(x3_out);
    plot(x3_obs);
    legend('Wartoœæ z obiektu', 'Wartoœæ z obserwatora', 'Location', 'southeast');
    title('Porównanie trzeciej zmiennej stanu - regulator 2', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Zmienna stanu x3');
    grid on;
    grid minor;

    name = strcat('figures\zad9\regulator2_x3_', num2str(i));
    print_figure(name, 'figures\zad9')
    close all
end