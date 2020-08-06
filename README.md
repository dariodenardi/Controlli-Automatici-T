# Controlli-Automatici-T

Progetto finale che è stato realizzato.

## Controllo della posizione verticale di un Bell-Boeing V-22 Osprey

Il velivolo in considerazione può funzionare sia come aereoplano sia come elicottero. Si considera un modello approssimato della dinamica verticale del Boeing, per la quale si vuole progettare un controllore che permetta di mantenere fissata una certa posizione verticale desiderata.

Un modello approssimato, linearizzato e già validato della dinamica di interesse del velivolo ha portato alla una funzione di trasferimento in cui l'ingresso u rappresenta la velocità di rotazione dei motori (la quale determina la spinta che l'aereo riceve verso l'alto) e l'uscita y è la posizione verticale del velivolo.

Qui i poli complessi coniugati rappresentano una dinamica secondaria dovuta, ad esempio, alla flessibilità della struttura che è sottoposte a un grande sforzo tra il peso dell'aereo e la spinta dei motori.

Il controllore deve rispettare alcune specifiche implementative quali avere errore a regime limitato superiormente da ε in risposta a un riferimento a gradino, Inoltre deve essere garantito un margine di fase maggiore uguale a Mf . Si richiede poi che la massima sovraelongazione sia del S% garantendo però un tempo
di assestamento al T%% inferiore a Ta.

La misura dell'uscita (posizione verticale) fatta tramite GPS è sporcata da un rumore di misura che deve essere attenuato di almeno Bn volte. Il rumore in questione è il disturbo n(t) nel diagramma a blocchi che ha contenuto frequenziale a partire dalla frequenza in rad/s ed ampiezza An.

(Opzionale) Come punto aggiuntivo si richiede di spingere al massimo le performance del sistema riducendo quanto più possibile il tempo di assestamento al T% e fornire un paragone tra le velocità (azioni di controllo generate dal regolatore) richieste ai motori in questione.
