clear
setparam

x1_ini = 1;
x2_ini = -5;
x3_ini = 1;

A = [7.576 1 0; -1.3904 0 1; 0.0636 0 0];
B = [0.4496; -0.3684; 0.0464];

poles = [0.3 0.3 0.3;
         0.2 0.5+0.1j 0.5-0.1j];

obs = [0.2 0.2;
       0.8 0.8];

   
   
for i=1:2  
   for j=1:2
        % parametry regulatora
        K = acker(A,B, poles(i,:));

        % parametry obserwatora
        z0 = obs(j,1);
        z1 = obs(j,2);
        l1 = -(z0+z1);
        l2 = z0*z1;

        sim('zad10_obsw')

        %rysowanie wykresu
        fig = figure('Name', strcat('Przebiegi w regulacji z obserwatorem'));
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
        
        name = strcat('figures\zad10\reg_', num2str(i), '_obs_', num2str(j));
        print_figure(name, 'figures\zad10')
        close all
   end
end