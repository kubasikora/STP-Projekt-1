% STP - Projekt 1 - Zadanie 47 - Jakub Sikora
% Pomocnicza funkcja formatuj¹ca wartoœæ do poprawnego wypisania 

% Funkcja zamienia wartoœæ na tekst i w zale¿noœci od znaku wstawia przed
% znak '+' lub znak '-'
function format = format_var(num)
    if(num > 0)
        format = ['+ ',num2str(num)];
    else 
        format = ['- ', num2str(abs(num))];
    end
end
