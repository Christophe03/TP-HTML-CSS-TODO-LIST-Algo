<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;c2 = &quot;" texte="Algo pour Permuter 2 caractères"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#c1" algoitem="c1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#c2" algoitem="c2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#c3" algoitem="c3 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#c1#pasliste" algoitem="LIRE c1"/>
        <item code="2#c2#pasliste" algoitem="LIRE c2"/>
        <item code="5#c3#c1#pasliste" algoitem="c3 PREND_LA_VALEUR c1"/>
        <item code="5#c1#c2#pasliste" algoitem="c1 PREND_LA_VALEUR c2"/>
        <item code="5#c2#c3#pasliste" algoitem="c2 PREND_LA_VALEUR c3"/>
        <item code="4#c1 = #0" algoitem="AFFICHER &quot;c1 = &quot;"/>
        <item code="3#c1#1#pasliste" algoitem="AFFICHER c1"/>
        <item code="4#c2 = #0" algoitem="AFFICHER &quot;c2 = &quot;"/>
        <item code="3#c2#0#pasliste" algoitem="AFFICHER c2"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
