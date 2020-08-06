function [alpha, tau]=ProgettaRA(Ge)

% traccia il diagramma di Bode del sistema
bode(Ge);
grid;

% evidenzia un punto sul diagramma delle fasi che identifica la fase di
% L(s) in corrispondenza della pulsazione di attraversamento desiderata
% (x = w_c desiderata, y + 180 = margine di fase )
% y = arg(L(jw_c))

disp('Individuare la w_c e il margine di fase desiderato indicando il punto di passaggio desiderato nel diagramma delle fasi')
[Wcd,PAd]=ginput(1);
 
% % stampa a video i valori desiderati
disp('Margine di fase desiderato: ')
MFd=180+PAd
disp('Pulsazione di attraversamento desiderata: ')
Wcd

% calcolo attenuazione e ritardo di fase da introdurre
[M,P,W]=bode(Ge);

% cerco l'indice del vettore più vicino alla pulsazione di attraversamento
% desiderata e lo memorizzo in i
[V,i]=min(abs(W-Wcd));

% cerco modulo e argomento in quella pulsazione
GeWcd=M(i);
ArgGeWcd=P(i);

% modulo e argomento finali
Pd=-180+MFd-ArgGeWcd;
Md=1/GeWcd;

% conversione in radianti di Pd
Pd=Pd*pi/180;

% check sulla realizzabilità
if (Md<1 || Pd<0 || cos(Pd)<1/Md)
    disp('Attenzione: sintesi non possibile con una rete anticipatrice'); 
    return;
end

% calcolo alpha e tau sulla base delle formule di inversione
tau=(Md-cos(Pd))/(Wcd*sin(Pd));
alpha=(cos(Pd)-1/Md)/(Wcd*sin(Pd))/tau;


