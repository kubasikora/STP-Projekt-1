% STP - Projekt 1 - Zadanie 47 - Jakub Sikora
% Regulator ze sprzê¿eniem od stanu

setparam;

x1_ini = 1;
x2_ini = -5;
x3_ini = 1;

A = [7.576 1 0; -1.3904 0 1; 0.0636 0 0];
B = [0.4496; -0.3684; 0.0464];

% lokacja w wariancie I

% trzy takie same bieguny rzeczywiste
poles = [0.1 0.1 0.1; % bieguny w 0.1
         0.3 0.3 0.3; % bieguny w 0.3
         0.5 0.5 0.5; % bieguny w 0.5
         0.8 0.8 0.8; % bieguny w 0.8
         -0.1 -0.1 -0.1; %bieguny w -0.1
         -0.5 -0.5 -0.5; % bieguny w -0.5
         -0.8 -0.8 -0.8 % bieguny w -0.8
         1 1 1; % bieguny w 1
         0 0 0]; % bieguny w 0
     
for i=1:9
    K = acker(A,B, poles(i,:)'); %lokacja biegunów
    sim('zad6_sim'); % symulacja procesu
    
    %rysowanie wykresu
    fig = figure('Name', strcat('Lokacja biegunów w z = ', num2str(poles(i, 1)), ', porównanie zmiennych stanu '));
    set(gcf, 'Position', [100, 100, 800, 600])
    hold on;
    grid on;
    grid minor;
    
    %zmienna stanu x1, równa wyjœciu procesu y
    subplot(2,2,1)
    plot(x1_out);
    grid on;
    grid minor;
    legend('Zmienna stanu x1', 'Location','northeast');
    title('Zmienna stanu x1 = y', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Zmienna stanu x1');
    
    %zmienna stanu x2 
    subplot(2,2,2)
    plot(x2_out);
    grid on;
    grid minor;
    legend('Zmienna stanu x2', 'Location', 'northeast');
    title('Zmienna stanu x2', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Zmienna stanu x2');
    
    %zmienna stanu x3
    subplot(2,2,3)
    plot(x3_out);
    grid on;
    grid minor;
    legend('Zmienna stanu x3', 'Location', 'northeast');
    title('Zmienna stanu x3', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Zmienna stanu x3');
    
    % sygna³ steruj¹cy
    subplot(2,2,4)
    plot(u_out);
    grid on;
    grid minor;
    legend('Sterowanie u', 'Location', 'southeast');
    title('Sterowanie u', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Sygna³ steruj¹cy u');
      
    name = strcat('figures\zad6\p1_', num2str(i), '_regulator');
    print_figure(name, 'figures\zad6')
    
    % po³o¿enie biegunów
    fig = figure('Name', 'Po³o¿enie biegunów regulatora');
    set(gcf, 'Position', [400, 400, 400, 340])
    hold on;
    axis([-1 1 -1 1]);
    plot(real(poles(i,1)), imag(poles(i,1)), '-x');
    plot(real(poles(i,2)), imag(poles(i,2)), '-x');
    plot(real(poles(i,3)), imag(poles(i,3)), '-x');
    grid on;
    grid minor;
    title('Po³o¿enie biegunów', 'FontName', 'Helvetica');
    xlabel('Re(z)');
    ylabel('Im(z)');
    
    % ko³o stabilnoœci
    th = 0:pi/50:2*pi;
    xunit = cos(th);
    yunit = sin(th);
    h = plot(xunit, yunit , '--');
    
    name = strcat('figures\zad6\p1_', num2str(i), '_bieguny');
    print_figure(name, 'figures\zad6')
    
    close all
end

% lokacja w wariancie II

% biegun rzeczywisty i dwa bieguny zespolone 
poles = [0.2 0.1+0.2i 0.1-0.2i; % bieguny w 0.2 i w 0.1+-0.2j
         0.2 0.1+0.5i 0.1-0.5i; % bieguny w 0.2 i w 0.1+-0.5j
         0.2 0.1+0.8i 0.1-0.8i; % bieguny w 0.2 i w 0.1+-0.8j
         0.2 0.2+0.1i 0.2-0.1i; % bieguny w 0.2 i w 0.2+-0.1j
         0.2 0.5+0.1i 0.5-0.1i; % bieguny w 0.2 i w 0.5+-0.1j
         0.2 0.8+0.1i 0.8-0.1i; % bieguny w 0.2 i w 0.8+-0.1j
         0.2 -0.1+0.1i -0.1-0.1i; % bieguny w 0.2 i w -0.1+-0.1j
         0.2 -0.8+0.1i -0.8-0.1i]; % bieguny w 0.2 i w -0.8+-0.1j
     
for i=1:8
    K = acker(A,B, poles(i,:)'); %lokacja biegunów
    sim('zad6_sim'); % symulacja procesu
    
    %rysowanie wykresu
    fig = figure('Name', strcat('Bieguny = [', num2str(poles(i,1)), ', ', num2str(poles(i,2)), ', ', num2str(poles(i,3)), '], porównanie zmiennych stanu '));
    set(gcf, 'Position', [100, 100, 800, 600])
    hold on;
    grid on;
    grid minor;
    
    % zmienna stanu x1, równa wyjœciu procesu y
    subplot(2,2,1)
    plot(x1_out);
    grid on;
    grid minor;
    legend('Zmienna stanu x1', 'Location','northeast');
    title('Zmienna stanu x1 = y', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Zmienna stanu x1');
    
    % zmienna stanu x2
    subplot(2,2,2)
    plot(x2_out);
    grid on;
    grid minor;
    legend('Zmienna stanu x2', 'Location', 'northeast');
    title('Zmienna stanu x2', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Zmienna stanu x2');
    
    % zmienna stanu x3
    subplot(2,2,3)
    plot(x3_out);
    grid on;
    grid minor;
    legend('Zmienna stanu x3', 'Location', 'northeast');
    title('Zmienna stanu x3', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Zmienna stanu x3');
    
    % sygna³ steruj¹cy
    subplot(2,2,4)
    plot(u_out);
    grid on;
    grid minor;
    legend('Sterowanie u', 'Location', 'southeast');
    title('Sterowanie u', 'FontName', 'Helvetica');
    xlabel('Czas t');
    ylabel('Sygna³ steruj¹cy u');
    
    name = strcat('figures\zad6\p2_', num2str(i), '_regulator');
    print_figure(name, 'figures\zad6')
    
    % po³o¿enie biegunów
    fig = figure('Name', 'Po³o¿enie biegunów regulatora');
    set(gcf, 'Position', [400, 400, 400, 340])
    hold on;
    axis([-1 1 -1 1]);
    plot(real(poles(i,1)), imag(poles(i,1)), '-x');
    plot(real(poles(i,2)), imag(poles(i,2)), '-x');
    plot(real(poles(i,3)), imag(poles(i,3)), '-x');
    grid on;
    grid minor;
    title('Po³o¿enie biegunów', 'FontName', 'Helvetica');
    xlabel('Re(z)');
    ylabel('Im(z)');
    
    % ko³o stabilnoœci
    th = 0:pi/50:2*pi;
    xunit = cos(th);
    yunit = sin(th);
    h = plot(xunit, yunit , '--');
    
    name = strcat('figures\zad6\p2_', num2str(i), '_bieguny');
    print_figure(name, 'figures\zad6')
    
    close all
end