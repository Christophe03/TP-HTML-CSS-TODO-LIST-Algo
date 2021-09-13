<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Le montant en Euros&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Montant" algoitem="Montant EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Le montant en Euros#0" algoitem="AFFICHER &quot;Le montant en Euros&quot;"/>
        <item code="2#Montant#pasliste" algoitem="LIRE Montant"/>
        <item code="3#Montant#0#pasliste" algoitem="AFFICHER Montant"/>
        <item code="4# euros #0" algoitem="AFFICHER &quot; euros &quot;"/>
        <item code="4#est l'équivalant de #0" algoitem="AFFICHER &quot;est l'équivalant de &quot;"/>
        <item code="20#Montant*655#0" algoitem="AFFICHERCALCUL Montant*655"/>
        <item code="4# cfa#0" algoitem="AFFICHER &quot; cfa&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
