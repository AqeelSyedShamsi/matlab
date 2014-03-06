% Candidats 2009
% ALAHYANE Nadia	 Admis � concourir
% AMIEZ Celine	 Admis � concourir
% ANTRI Myriam	 Admis � concourir
% BARAKAT Youssef	 Admis � concourir
% BARIK Jacques	 Admis � concourir
% BARRIERE Gr�gory	 Admis � concourir
% BEGUE Anne	 Admis � concourir
% BENCHENANE Karim	 Admis � concourir
% BENTURQUIA Nadia	 Admis � concourir
% BERANECK Mathieu	 Admis � concourir
% BIDET-ILDEI Christel	 Admis � concourir
% BLANGERO Annabelle	 Admis � concourir
% BOISTEL Renaud	 Admis � concourir
% BOMPAS Aline	 Admis � concourir
% BOUDIN Florian	 Admis � concourir
% BOULENGER Veronique	 Admis � concourir
% BRUEL JUNGERMAN Elodie	 Admis � concourir
% COENEN Olivier	 Admis � concourir
% COLLINS Th�r�se	 Admis � concourir
% COPPOLA Vincent	 Admis � concourir
% COQUART J�r�my	 Admis � concourir
% DANGLOT Lydia	 Admis � concourir
% DE CHEVIGNY Antoine	 Admis � concourir
% DE MARGERIE Emmanuel	 Admis � concourir
% DELLEN Babette	 Admis � concourir
% DOLY Stephane	 Admis � concourir
% DUFOUR Valerie	 Admis � concourir
% DULIN David	 Admis � concourir
% DUPIERRIX Eve	 Admis � concourir
% DURAND Jean Baptiste	 Admis � concourir
% EGO-STENGEL Val�rie	 Admis � concourir
% ELEORE Lyndell	 Admis � concourir
% FAURE Alexis	 Admis � concourir
% FERNANDEZ Julian	 Admis � concourir
% GENTY Emilie	 Admis � concourir
% GOMEZ Doris	 Admis � concourir
% GOUREVITCH Boris	 Admis � concourir
% GUILLEM Karine	 Admis � concourir
% HADJ-BOUZIANE Fadila	 Admis � concourir
% HANSARD Miles Edward	 Admis � concourir
% HERVE Pierre Yves	 Admis � concourir
% HICHEUR Halim	 Admis � concourir
% HOK Vincent	 Admis � concourir
% HOSY Eric	 Admis � concourir
% HUSKY Mathilde	 Admis � concourir
% HUYS Raoul	 Admis � concourir
% ISEL Fr�d�ric	 Admis � concourir
% IZARD V�ronique	 Admis � concourir
% KILAVIK Bj�rg Elisabeth	 Admis � concourir
% LEBLOIS Arthur	 Admis � concourir
% LECOURTIER Lucas	 Admis � concourir
% LOPEZ Christophe	 Admis � concourir
% MADDEN Carol	 Admis � concourir
% MAIRESSE J�rome	 Admis � concourir
% MARQUES PEREIRA Patricia	 Admis � concourir
% MENDOZA Jorge	 Admis � concourir
% MICHELENA Pablo	 Admis � concourir
% MICHELET Thomas	 Admis � concourir
% MONTAGNINI Anna	 Admis � concourir
% MORICE Elise	 Admis � concourir
% MUNIER Claire Alice	 Admis � concourir
% NAVAILLES Sylvia	 Admis � concourir
% NAVARRO Jordan	 Admis � concourir
% PARRON Carole	 Admis � concourir
% PASCAL Fr�d�ric	 Admis � concourir
% PASTORINI Chiara	 Admis � concourir
% PATINO VILCHIS Jose Luis	 Admis � concourir
% PIETROPAOLO Susanna	 Admis � concourir
% PLAILLY Jane	 Admis � concourir
% POIRIER Karine	 Admis � concourir
% REGUIGNE-KHAMASSI Mehdi	 Admis � concourir
% RIBOT J�r�me	 Admis � concourir
% ROUSTIT Christelle	 Admis � concourir
% SAGASPE Patricia	 Admis � concourir
% SARLEGNA Fabrice	 Admis � concourir
% SCHIRLIN Olivier	 Admis � concourir
% SELIMBEGOVIC Leila	 Admis � concourir
% SERGENT Claire	 Admis � concourir
% SMADJA Carole	 Admis � concourir
% SNOEREN Natalie	 Admis � concourir
% TAGLIABUE Michele	 Admis � concourir
% TRONEL Sophie	 Admis � concourir
% UPAL Roy	 Admis � concourir
% WARDAK Claire	 Admis � concourir
% WIRTH Sylvia	 Admis � concourir
% YALCIN CHRISTMANN Ipek	 Admis � concourir
clear 
clc
filename=mfilename('fullpath');
nc = 86;
[a ,nom(:,1),nom(:,2)]=textread(filename ,'%s%s%s%*[^\n]',nc, 'headerlines',1);
query = 'http://www.ncbi.nlm.nih.gov/pubmed/search?term=("2000"[Publication%20Date]%20:%20"3000"[Publication%20Date])%20AND%20("%s%%20%s"[au])';
for i=1:nc
%    nom={'Baillet', 'S'}
    q =sprintf(query, nom{i,1},nom{i,2}(1))
    t=urlread(q);
    pmid=findstr('pmid',t); 
    findstr('title',t(pmid(1)+[5:400]))
    return
end 