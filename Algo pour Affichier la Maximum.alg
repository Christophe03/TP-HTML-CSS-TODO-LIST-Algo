<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;La valeur de A est : &quot;" texte="Algo pour Afficher le Maximum de 2 valeurs réelles"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#A" algoitem="A EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#B" algoitem="B EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entre 2 nombres A &amp; B#1" algoitem="AFFICHER &quot;Entre 2 nombres A &amp; B&quot;"/>
        <item code="2#A#pasliste" algoitem="LIRE A"/>
        <item code="2#B#pasliste" algoitem="LIRE B"/>
        <item code="6#A>B" algoitem="SI (A>B) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#A est le Maximum : #0" algoitem="AFFICHER &quot;A est le Maximum : &quot;"/>
            <item code="2#A#pasliste" algoitem="LIRE A"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#A&lt;B" algoitem="SI (A&lt;B) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#B est le Maximum : #0" algoitem="AFFICHER &quot;B est le Maximum : &quot;"/>
                    <item code="3#B#0#pasliste" algoitem="AFFICHER B"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#A==B" algoitem="SI (A==B) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="4#A est égale à B : #1" algoitem="AFFICHER &quot;A est égale à B : &quot;"/>
                            <item code="4#La valeur de A est : #0" algoitem="AFFICHER &quot;La valeur de A est : &quot;"/>
                            <item code="3#A#1#pasliste" algoitem="AFFICHER A"/>
                            <item code="4#La valeur de B est : #0" algoitem="AFFICHER &quot;La valeur de B est : &quot;"/>
                            <item code="3#B#1#pasliste" algoitem="AFFICHER B"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
