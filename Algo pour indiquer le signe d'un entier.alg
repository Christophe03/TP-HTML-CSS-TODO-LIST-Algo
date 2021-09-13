<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; Est négatif&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#A" algoitem="A EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entre un nombre#0" algoitem="AFFICHER &quot;Entre un nombre&quot;"/>
        <item code="2#A#pasliste" algoitem="LIRE A"/>
        <item code="6#A>0" algoitem="SI (A>0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="3#A#0#pasliste" algoitem="AFFICHER A"/>
            <item code="4# Est Positif#0" algoitem="AFFICHER &quot; Est Positif&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#A&lt;0" algoitem="SI (A&lt;0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="3#A#0#pasliste" algoitem="AFFICHER A"/>
                    <item code="4# Est négatif#0" algoitem="AFFICHER &quot; Est négatif&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#A==0" algoitem="SI (A==0) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="3#A#0#pasliste" algoitem="AFFICHER A"/>
                            <item code="4# Est nul#0" algoitem="AFFICHER &quot; Est nul&quot;"/>
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
