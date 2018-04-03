% STP - Projekt 1 - Zadanie 47 - Jakub Sikora
% Sprawdzanie sterowalnoœci i obserwowalnoœci modelu w przestrzeni stanów 
% w wariancie drugim

A = [7.576 1 0; -1.3904 0 1; 0.0636 0 0];
B = [0.4496; -0.3684; 0.0464];
C = [1 0 0];

STER = [B A*B (A^2)*B];
OBSW = [C; C*A; C*(A^2)];

n = rank(A);

rank_ster = rank(STER);
if (rank_ster == n)
    disp('Uklad jest calkowicie sterowalny')
else
    disp('Uklad nie jest calkowicie sterowalny')
end

rank_obsw = rank(OBSW);
if (rank_obsw == n)
    disp('Uklad jest calkowicie obserwowalny')
else
    disp('Uklad nie jest calkowicie obserwowalny')
end