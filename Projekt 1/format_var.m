% STP - Projekt 1 - Zadanie 47 - Jakub Sikora
% Pomocnicza funkcja formatuj�ca warto�� do poprawnego wypisania 

% Funkcja zamienia warto�� na tekst i w zale�no�ci od znaku wstawia przed
% znak '+' lub znak '-'
function format = format_var(num)
    if(num > 0)
        format = ['+ ',num2str(num)];
    else 
        format = ['- ', num2str(abs(num))];
    end
end
