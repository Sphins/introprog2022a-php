DROP DATABASE IF EXISTS mediatheque;
CREATE DATABASE mediatheque DEFAULT CHARACTER SET utf8;
USE mediatheque;
DROP TABLE IF EXISTS realisateurs;
CREATE TABLE realisateurs (
    real_id INT PRIMARY KEY AUTO_INCREMENT,
    real_nom VARCHAR(255) NOT NULL CHECK (TRIM(real_nom) <> '')
);
DROP TABLE IF EXISTS films;
CREATE TABLE films (
    films_id INT PRIMARY KEY AUTO_INCREMENT,
    films_titre VARCHAR(255) NOT NULL,
    films_resume TEXT,
    films_annee YEAR,
    films_affiche VARCHAR(255),
    films_duree SMALLINT CHECK (films_duree > 0 AND films_duree < 720),
    films_real_id INT REFERENCES realisateurs
);
DROP TABLE IF EXISTS genres;
CREATE TABLE genres (
    genres_id INT PRIMARY KEY AUTO_INCREMENT,
    genres_nom VARCHAR(255) NOT NULL UNIQUE CHECK (TRIM(genres_nom) <> '')
);
DROP TABLE IF EXISTS films_genres;
CREATE TABLE films_genres (  
    fg_films_id INT REFERENCES films,
    fg_genres_id INT REFERENCES genres,
    PRIMARY KEY (fg_films_id,fg_genres_id)
);
DROP TABLE IF EXISTS acteurs;
CREATE TABLE acteurs (
    acteurs_id INT PRIMARY KEY AUTO_INCREMENT,
    acteurs_nom VARCHAR(255) NOT NULL UNIQUE CHECK (TRIM(acteurs_nom) <> '')
);
DROP TABLE IF EXISTS films_acteurs;
CREATE TABLE films_acteurs (
    fa_films_id INT REFERENCES films ,
    fa_acteurs_id INT REFERENCES acteurs,
    PRIMARY KEY(fa_films_id,fa_acteurs_id)
);
INSERT INTO realisateurs(real_nom) VALUES ('Christopher Nolan');
INSERT INTO realisateurs(real_nom) VALUES ('David Fincher');
INSERT INTO realisateurs(real_nom) VALUES ('Martin Scorsese');
INSERT INTO realisateurs (real_nom)VALUES ('Quentin Tarantino');
INSERT INTO realisateurs (real_nom)VALUES ('Zack Snyder');
INSERT INTO realisateurs (real_nom)VALUES ('Clint Eastwood');
INSERT INTO realisateurs (real_nom)VALUES ('Edgar Wright');
INSERT INTO realisateurs (real_nom)VALUES ('Darren Aronofsky');
INSERT INTO realisateurs (real_nom)VALUES ('Andrew Niccol');
INSERT INTO realisateurs (real_nom)VALUES ('Andy&Lana Wachowski');
INSERT INTO realisateurs (real_nom)VALUES ('Joseph Kosinski');
INSERT INTO realisateurs (real_nom)VALUES ('J.J. Abrams');
INSERT INTO realisateurs (real_nom)VALUES ('Marc Webb');
INSERT INTO realisateurs (real_nom)VALUES ('Matthew Vaughn');
INSERT INTO realisateurs (real_nom)VALUES ('Bryan Singer');
INSERT INTO realisateurs (real_nom)VALUES ('David O. Russell');
INSERT INTO realisateurs (real_nom)VALUES ('Nicolas Winding Refn');
INSERT INTO realisateurs (real_nom)VALUES ('Derek Cianfrance');
INSERT INTO realisateurs (real_nom)VALUES ('Sam Mendes');
INSERT INTO realisateurs (real_nom)VALUES ('Tony Kaye');  
INSERT INTO realisateurs (real_nom)VALUES ('Alan Parker ');  
INSERT INTO realisateurs (real_nom)VALUES ('Francis Lawrence'); 
INSERT INTO realisateurs (real_nom)VALUES ('Michel Gondry'); 
INSERT INTO realisateurs (real_nom)VALUES ('Frank Darabont'); 
INSERT INTO realisateurs (real_nom)VALUES ('Tim burton');
INSERT INTO realisateurs (real_nom)VALUES ('Martin Campbell');

INSERT INTO films VALUES (NULL,'Interstellar',
    'Le film raconte les aventures d\'un groupe d\'explorateurs qui utilisent une faille r??cemment d??couverte dans l\'espace-temps afin de repousser les limites humaines et partir ?? la conqu??te des distances astronomiques dans un voyage interstellaire.',
    2014,'interstellar.jpg',169,1);
INSERT INTO films VALUES (NULL,'The Dark Knight Rises ',
    'Il y a huit ans, Batman a disparu dans la nuit : lui qui ??tait un h??ros est alors devenu un fugitif. S\'accusant de la mort du procureur-adjoint Harvey Dent, le Chevalier Noir a tout sacrifi?? au nom de ce que le commissaire Gordon et lui-m??me consid??raient ??tre une noble cause...',
    2012,'dark-rises.jpg',164,1);
INSERT INTO films VALUES (NULL,'Inception ','Dom Cobb est un voleur exp??riment?? ??? le meilleur qui soit dans l???art p??rilleux de l???extraction : sa sp??cialit?? consiste ?? s???approprier les secrets les plus pr??cieux d???un individu, enfouis au plus profond de son subconscient, pendant qu???il r??ve et que son esprit est particuli??rement vuln??rable. Tr??s recherch?? pour ses talents dans l???univers trouble de l???espionnage industriel, Cobb est aussi devenu un fugitif traqu?? dans le monde entier qui a perdu tout ce qui lui est cher. ',
    2010,'inception.jpg',148,1);
INSERT INTO films VALUES (NULL,'The Dark Knight, 
    Le Chevalier Noir','Dans ce nouveau volet, Batman augmente les mises dans sa guerre contre le crime. Avec l\'appui du lieutenant de police Jim Gordon et du procureur de Gotham, Harvey Dent, Batman vise ?? ??radiquer le crime organis?? qui pullule dans la ville. Leur association est tr??s efficace mais elle sera bient??t boulevers??e par le chaos d??clench?? par un criminel extraordinaire que les citoyens de Gotham connaissent sous le nom de Joker. ',
    2008,'dark-k.jpg',147,1);
INSERT INTO films VALUES (NULL,'Le Prestige','Londres, au d??but du si??cle dernier... Robert Angier et Alfred Borden sont deux magiciens surdou??s, promis d??s leur plus jeune ??ge ?? un glorieux avenir. Une comp??tition amicale les oppose d\'abord l\'un ?? l\'autre, mais l\'??mulation tourne vite ?? la jalousie, puis ?? la haine. Devenus de farouches ennemis, les deux rivaux vont s\'efforcer de se d??truire l\'un l\'autre en usant des plus noirs secrets de leur art. Cette obsession aura pour leur entourage des cons??quences dramatiques...',
    2006,'prestige.jpg',128,1);
INSERT INTO films VALUES (NULL,'Batman Begins','Comment un homme seul peut-il changer le monde ? Telle est la question qui hante Bruce Wayne depuis cette nuit tragique o?? ses parents furent abattus sous ses yeux, dans une ruelle de Gotham City. Tortur?? par un profond sentiment de col??re et de culpabilit??, le jeune h??ritier de cette richissime famille fuit Gotham pour un long et discret voyage ?? travers le monde. Le but de ses p??r??grinations : sublimer sa soif de vengeance en trouvant de nouveaux moyens de lutter contre l\'injustice.',
    2005,'batman-b.jpg',139,1);
INSERT INTO films VALUES (NULL,'Memento','Leonard Shelby ne porte que des costumes de grands couturiers et ne se d??place qu\'au volant de sa Jaguar. En revanche, il habite dans des motels miteux et r??gle ses notes avec d\'??paisses liasses de billets.
Leonard n\'a qu\'une id??e en t??te : traquer l\'homme qui a viol?? et assassin?? sa femme afin de se venger. Sa recherche du meurtrier est rendue plus difficile par le fait qu\'il souffre d\'une forme rare et incurable d\'amn??sie. Bien qu\'il puisse se souvenir de d??tails de son pass??, il est incapable de savoir ce qu\'il a fait dans le quart d\'heure pr??c??dent, o?? il se trouve, o?? il va et pourquoi.',
2000,'memento.jpg',114,1);

INSERT INTO films VALUES (NULL,'Gone Girl','A l???occasion de son cinqui??me anniversaire de mariage, Nick Dunne signale la disparition de sa femme, Amy. Sous la pression de la police et l???affolement des m??dias, l???image du couple mod??le commence ?? s???effriter. Tr??s vite, les mensonges de Nick et son ??trange comportement am??nent tout le monde ?? se poser la m??me question : a-t-il tu?? sa femme ?',
    2014,'gone-girl.jpg',149,2);
INSERT INTO films VALUES (NULL,'Millenium : Les hommes qui n???aimaient pas les femmes','Mikael Blomkvist, brillant journaliste d???investigation, est engag?? par un des plus puissants industriels de Su??de, Henrik Vanger, pour enqu??ter sur la disparition de sa ni??ce, Harriet, survenue des ann??es auparavant. Vanger est convaincu qu???elle a ??t?? assassin??e par un membre de sa propre famille.Lisbeth Salander, jeune femme rebelle mais enqu??trice exceptionnelle, est charg??e de se renseigner sur Blomkvist, ce qui va finalement la conduire ?? travailler avec lui.',
2012,'millenium.jpg',158,2);
INSERT INTO films VALUES (NULL,'The Social Network','Une soir??e bien arros??e d\'octobre 2003, Mark Zuckerberg, un ??tudiant qui vient de se faire plaquer par sa petite amie, pirate le syst??me informatique de l\'Universit?? de Harvard pour cr??er un site, une base de donn??es de toutes les filles du campus. Il affiche c??te ?? c??te deux photos et demande ?? l\'utilisateur de voter pour la plus canon. Il baptise le site Facemash. Le succ??s est instantan?? : l\'information se diffuse ?? la vitesse de l\'??clair et le site devient viral, d??truisant tout le syst??me de Harvard et g??n??rant une controverse sur le campus ?? cause de sa misogynie.',
    2010,'the-social-network.jpg',120,2);
INSERT INTO films VALUES (NULL,'L\'Etrange histoire de Benjamin Button','"Curieux destin que le mien..." Ainsi commence l\'??trange histoire de Benjamin Button, cet homme qui naquit ?? 80 ans et v??cut sa vie ?? l\'envers, sans pouvoir arr??ter le cours du temps. Situ?? ?? La Nouvelle-Orl??ans et adapt?? d\'une nouvelle de F. Scott Fitzgerald, le film suit ses tribulations de 1918 ?? nos jours. L\'??trange histoire de Benjamin Button : l\'histoire d\'un homme hors du commun. Ses rencontres et ses d??couvertes, ses amours, ses joies et ses drames. Et ce qui survivra toujours ?? l\'emprise du temps...',
    2009,'ben-button.jpg',155,2);
INSERT INTO films VALUES (NULL,'Fight Club','Le narrateur, sans identit?? pr??cise, vit seul, travaille seul, dort seul, mange seul ses plateaux-repas pour une personne comme beaucoup d\'autres personnes seules qui connaissent la mis??re humaine, morale et sexuelle. C\'est pourquoi il va devenir membre du Fight club, un lieu clandestin ou il va pouvoir retrouver sa virilit??, l\'??change et la communication. Ce club est dirig?? par Tyler Durden, une sorte d\'anarchiste entre gourou et philosophe qui pr??che l\'amour de son prochain. ',
    1999,'fight-club.jpg',135,2);
INSERT INTO films VALUES (NULL,'The Game','Nicholas Van Orton, homme d\'affaires avis??, re??oit le jour de son anniversaire un ??trange cadeau que lui offre son fr??re Conrad. Il s\'agit d\'un jeu. Nicholas d??couvre peu ?? peu que les enjeux en sont tr??s ??lev??s, bien qu\'il ne soit certain ni des r??gles, ni m??me de l\'objectif r??el. Il prend peu ?? peu conscience qu\'il est manipul?? jusque dans sa propre maison par des conspirateurs inconnus qui semblent vouloir faire voler sa vie en eclats. ',
    1997,'game.jpg',128,2);
INSERT INTO films VALUES (NULL,'Seven','Pour conclure sa carri??re, l\'inspecteur Somerset, vieux flic blas??, tombe ?? sept jours de la retraite sur un criminel peu ordinaire. John Doe, c\'est ainsi que se fait appeler l\'assassin, a decid?? de nettoyer la societ?? des maux qui la rongent en commettant sept meurtres bas??s sur les sept pech??s capitaux: la gourmandise, l\'avarice, la paresse, l\'orgueil, la luxure, l\'envie et la col??re. ',
    1996,'seven.jpg',130,2);


INSERT INTO films VALUES (NULL,'Le Loup de Wall Street','L???argent. Le pouvoir. Les femmes. La drogue. Les tentations ??taient l??, ?? port??e de main, et les autorit??s n???avaient aucune prise. Aux yeux de Jordan et de sa meute, la modestie ??tait devenue compl??tement inutile. Trop n?????tait jamais assez???',
    2013,'loup.jpg',179,3);
INSERT INTO films VALUES (NULL,'Shutter Island','En 1954, le marshal Teddy Daniels et son co??quipier Chuck Aule sont envoy??s enqu??ter sur l\'??le de Shutter Island, dans un h??pital psychiatrique o?? sont intern??s de dangereux criminels. L\'une des patientes, Rachel Solando, a inexplicablement disparu. Comment la meurtri??re a-t-elle pu sortir d\'une cellule ferm??e de l\'ext??rieur ? Le seul indice retrouv?? dans la pi??ce est une feuille de papier sur laquelle on peut lire une suite de chiffres et de lettres sans signification apparente. Oeuvre coh??rente d\'une malade, ou cryptogramme ? ',
    2010,'shutter.jpg',137,3);
INSERT INTO films VALUES (NULL,'Les Infiltr??s','A Boston, une lutte sans merci oppose la police ?? la p??gre irlandaise.Pour mettre fin au r??gne du parrain Frank Costello, la police infiltre son gang avec "un bleu" issu des bas quartiers, Billy Costigan.',
    2006,'infiltres.jpg',150,3);
INSERT INTO films VALUES (NULL,'Gangs of New York','En 1846, le quartier de Five Points, un faubourg pauvre de New York, est le th????tre d\'une guerre des gangs entre ??migrants irlandais d\'un c??t??, les Dead Rabbits men??s par P??re Vallon, et les Native Americans de l\'autre, dirig??s par le sanguinaire Bill le Boucher. Ce dernier met rapidement en d??route les Dead Rabbits en assassinant leur chef, et prend par la m??me occasion le contr??le exclusif des rues de la grosse pomme. Afin de renforcer ses pouvoirs, Bill s\'allie avec Boss Tweed, un politicien influent.',
    2003,'gangs.jpg',170,3);

INSERT INTO films VALUES (NULL,'Django Unchained','Dans le sud des ??tats-Unis, deux ans avant la guerre de S??cession, le Dr King Schultz, un chasseur de primes allemand, fait l???acquisition de Django, un esclave qui peut l???aider ?? traquer les fr??res Brittle, les meurtriers qu???il recherche. Schultz promet ?? Django de lui rendre sa libert?? lorsqu???il aura captur?? les Brittle ??? morts ou vifs.',
    2013,'django.jpg',164,4);
INSERT INTO films VALUES (NULL,'Inglourious Basterds','Dans la France occup??e de 1940, Shosanna Dreyfus assiste ?? l\'ex??cution de sa famille tomb??e entre les mains du colonel nazi Hans Landa. Shosanna s\'??chappe de justesse et s\'enfuit ?? Paris o?? elle se construit une nouvelle identit?? en devenant exploitante d\'une salle de cin??ma. Quelque part ailleurs en Europe, le lieutenant Aldo Raine forme un groupe de soldats juifs am??ricains pour mener des actions punitives particuli??rement sanglantes contre les nazis. ',
    2009,'inglorious.jpg',153,4);
INSERT INTO films VALUES (NULL,'Pulp Fiction','L\'odyss??e sanglante et burlesque de petits malfrats dans la jungle de Hollywood ?? travers trois histoires qui s\'entrem??lent. ',
    1994,'pulp.jpg',149,4);


INSERT INTO films VALUES (NULL,'Man of Steel','Un petit gar??on d??couvre qu\'il poss??de des pouvoirs surnaturels et qu\'il n\'est pas n?? sur Terre. Plus tard, il s\'engage dans un p??riple afin de comprendre d\'o?? il vient et pourquoi il a ??t?? envoy?? sur notre plan??te. Mais il devra devenir un h??ros s\'il veut sauver le monde de la destruction totale et incarner l\'espoir pour toute l\'humanit??.'
    ,2013,'man-steel.jpg',143,5);
INSERT INTO films VALUES (NULL,'Sucker Punch','Fermez les yeux. Lib??rez-vous l\'esprit. Rien ne vous pr??pare ?? ce qui va suivre. Bienvenue dans l\'imaginaire d??bordant d\'une jeune fille dont les r??ves sont la seule ??chappatoire ?? sa vie cauchemardesque??? S\'affranchissant des contraintes de temps et d\'espace, elle est libre d\'aller l?? o?? l\'entra??ne son imagination, jusqu\'?? brouiller la fronti??re entre r??alit?? et fantasme???',
    2011,'sucker-punch.jpg',110,5);
INSERT INTO films VALUES (NULL,'Watchmen - Les Gardiens','venture ?? la fois complexe et myst??rieuse sur plusieurs niveaux, "Watchmen - Les Gardiens" - se passe dans une Am??rique alternative de 1985 o?? les super-h??ros font partie du quotidien et o?? l\'Horloge de l\'Apocalypse -symbole de la tension entre les Etats-Unis et l\'Union Sovi??tique- indique en permanence minuit moins cinq. Lorsque l\'un de ses anciens coll??gues est assassin??, Rorschach, un justicier masqu?? un peu ?? plat mais non moins d??termin??, va d??couvrir un complot qui menace de tuer et de discr??diter tous les super-h??ros du pass?? et du pr??sent.',
    2009,'watchmen.jpg',162,5);
INSERT INTO films VALUES (NULL,'300','Adapt?? du roman graphique de Frank Miller, 300 est un r??cit ??pique de la Bataille des Thermopyles, qui opposa en l\'an - 480 le roi L??onidas et 300 soldats spartiates ?? Xerx??s et l\'immense arm??e perse. Face ?? un invincible ennemi, les 300 d??ploy??rent jusqu\'?? leur dernier souffle un courage surhumain ; leur vaillance et leur h??ro??que sacrifice inspir??rent toute la Gr??ce ?? se dresser contre la Perse, posant ainsi les premi??res pierres de la d??mocratie. ',
    2007,'300.jpg',115,5);


INSERT INTO films VALUES (NULL,'Gran Torino ','Walt Kowalski est un ancien de la guerre de Cor??e, un homme inflexible, amer et p??tri de pr??jug??s surann??s. Apr??s des ann??es de travail ?? la cha??ne, il vit repli?? sur lui-m??me, occupant ses journ??es ?? bricoler, tra??nasser et siroter des bi??res. Avant de mourir, sa femme exprima le voeu qu\'il aille ?? confesse, mais Walt n\'a rien ?? avouer, ni personne ?? qui parler. Hormis sa chienne Daisy, il ne fait confiance qu\'?? son M-1, toujours propre, toujours pr??t ?? l\'usage...',
    2009,'torino.jpg',111,6);
INSERT INTO films VALUES (NULL,'L\'Echange','Los Angeles, 1928. Un matin, Christine dit au revoir ?? son fils Walter et part au travail. Quand elle rentre ?? la maison, celui-ci a disparu. Une recherche effr??n??e s\'ensuit et, quelques mois plus tard, un gar??on de neuf ans affirmant ??tre Walter lui est restitu??. Christine le ram??ne chez elle mais au fond d\'elle, elle sait qu\'il n\'est pas son fils... ',
    2008,'echange.jpg',141,6);
INSERT INTO films VALUES (NULL,'Million Dollar Baby','Rejet?? depuis longtemps par sa fille, l\'entra??neur Frankie Dunn s\'est repli?? sur lui-m??me et vit dans un d??sert affectif, en ??vitant toute relation qui pourrait accro??tre sa douleur et sa culpabilit??. Le jour o?? Maggie Fitzgerald, 31 ans, pousse la porte de son gymnase ?? la recherche d\'un coach, elle n\'am??ne pas seulement avec elle sa jeunesse et sa force, mais aussi une histoire jalonn??e d\'??preuves et une exigence, vitale et urgente : monter sur le ring, entra??n??e par Frankie, et enfin concr??tiser le r??ve d\'une vie.',
    2005,'million.jpg',132,6);
INSERT INTO films VALUES (NULL,'Mystic River','Jimmy Markum, Dave Boyle et Sean Devine ont grandi ensemble dans les rues de Boston. Rien ne semblait devoir alt??rer le cours de leur amiti?? jusqu\'au jour o?? Dave se fit enlever par un inconnu sous les yeux de ses amis. Leur complicit?? juv??nile ne r??sista pas ?? un tel ??v??nement et leurs chemins se s??par??rent in??luctablement.',
    2003,'mystic.jpg',137,6);

INSERT INTO films VALUES (NULL,'Shaun of the Dead','?? presque 30 ans, Shaun ne fait pas grand-chose de sa vie. Entre l\'appart qu\'il partage avec ses potes et le temps qu\'il passe avec eux au pub, Liz, sa petite amie, n\'a pas beaucoup de place. Elle qui voudrait que Shaun s\'engage, ne supporte plus de le voir tra??ner. Exc??d??e par ses vaines promesses et son incapacit?? ?? se consacrer un peu ?? leur couple, Liz d??cide de rompre. Shaun est d??cid?? ?? tout r??parer, et tant pis si les zombies d??ferlent sur Londres, tant pis si la ville devient un v??ritable enfer. Retranch?? dans son pub pr??f??r??, le temps est venu pour lui de montrer enfin de quoi il est capable... ',
    2005,'shaun.jpg',99,7);
INSERT INTO films VALUES (NULL,'Hot Fuzz','A Londres, le policier Nicholas Angel est le meilleur de son ??quipe. Tellement bon qu\'il fait passer ses coll??gues pour de simples gardiens de la paix. Le chef de la brigade d??cide donc de le "promouvoir" dans le petit village de Sandford, o?? il ne se passe rien. Aux c??t??s du policier local Danny Butterman qui r??ve de devenir Mel Gibson, Nicholas r??gle quelques contraventions sans grand int??r??t. Une s??rie de crimes ??tranges va le remettre dans l\'action... ',
    2007,'hot-fuzz.jpg',120,7);

INSERT INTO films VALUES (NULL,'Black Swan','Rivalit??s dans la troupe du New York City Ballet. Nina est pr??te ?? tout pour obtenir le r??le principal du Lac des cygnes que dirige l???ambigu Thomas. Mais elle se trouve bient??t confront??e ?? la belle et sensuelle nouvelle recrue, Lily...',
    2011,'black-swan.jpg',103,8);


INSERT INTO films VALUES (NULL,'Bienvenue ?? Gattaca','Dans un monde parfait, Gattaca est un centre d\'??tudes et de recherches spatiales pour des jeunes gens au patrimoine g??n??tique impeccable. J??r??me, candidat id??al, voit sa vie d??truite par un accident tandis que Vincent, enfant naturel, r??ve de partir pour l\'espace. Chacun des deux va permettre ?? l\'autre d\'obtenir ce qu\'il souhaite en d??jouant les lois de Gattaca.',
    1998,'gattaca.jpg',106,9);

INSERT INTO films VALUES (NULL,'Cloud Atlas','?? travers une histoire qui se d??roule sur cinq si??cles dans plusieurs espaces temps, des ??tres se croisent et se retrouvent d???une vie ?? l???autre, naissant et renaissant successivement??? Tandis que leurs d??cisions ont des cons??quences sur leur parcours, dans le pass??, le pr??sent et l???avenir lointain, un tueur devient un h??ros et un seul acte de g??n??rosit?? suffit ?? entra??ner des r??percussions pendant plusieurs si??cles et ?? provoquer une r??volution. Tout, absolument tout, est li??. '
    ,2013,'clous-atlas.jpg',165,10);
INSERT INTO films VALUES (NULL,'Matrix Reloaded','Neo apprend ?? mieux contr??ler ses dons naturels, alors m??me que Sion s\'appr??te ?? tomber sous l\'assaut de l\'Arm??e des Machines. D\'ici quelques heures, 250 000 Sentinelles programm??es pour an??antir notre esp??ce envahiront la derni??re enclave humaine de la Terre.',
    2003,'matrix-reloaded.jpg',138,10);
INSERT INTO films VALUES (NULL,'Matrix Revolutions','La longue qu??te de libert?? des rebelles culmine en une bataille finale explosive. Tandis que l\'arm??e des Machines s??me la d??solation sur Zion, ses citoyens organisent une d??fense acharn??e. Mais pourront-ils retenir les nu??es implacables des Sentinelles en attendant que Neo s\'approprie l\'ensemble de ses pouvoirs et mette fin ?? la guerre ?',
    2003,'matrix-rev.jpg',128,10);
INSERT INTO films VALUES (NULL,'Matrix','Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des pirates les plus recherch??s du cyber-espace. A cheval entre deux mondes, Neo est assailli par d\'??tranges songes et des messages crypt??s provenant d\'un certain Morpheus. Celui-ci l\'exhorte ?? aller au-del?? des apparences et ?? trouver la r??ponse ?? la question qui hante constamment ses pens??es : qu\'est-ce que la Matrice ? Nul ne le sait, et aucun homme n\'est encore parvenu ?? en percer les defenses. Mais Morpheus est persuad?? que Neo est l\'Elu, le lib??rateur mythique de l\'humanit?? annonc?? selon la proph??tie. Ensemble, ils se lancent dans une lutte sans retour contre la Matrice et ses terribles agents...',
    1999,'matrix.jpg',135,10);

INSERT INTO films VALUES (NULL,'Oblivion','2077 : Jack Harper, en station sur la plan??te Terre dont toute la population a ??t?? ??vacu??e, est en charge de la s??curit?? et de la r??paration des drones. Suite ?? des d??cennies de guerre contre une force extra-terrestre terrifiante qui a ravag?? la Terre, Jack fait partie d???une gigantesque op??ration d???extraction des derni??res ressources n??cessaires ?? la survie des siens.',
    2013,'oblivion.jpg',126,11);


INSERT INTO films VALUES (NULL,'Star Trek Into Darkness','Alors qu???il rentre ?? sa base, l?????quipage de l???Enterprise doit faire face ?? des forces terroristes implacables au sein m??me de son organisation. L???ennemi a fait exploser la flotte et tout ce qu???elle repr??sentait, plongeant notre monde dans le chaos???',
    2013,'star-trek-dark.jpg',130,12);

INSERT INTO films VALUES (NULL,'The Amazing Spider-Man : le destin d\'un H??ros ','Ce n???est un secret pour personne que le combat le plus rude de Spider-Man est celui qu???il m??ne contre lui-m??me en tentant de concilier la vie quotidienne de Peter Parker et les lourdes responsabilit??s de Spider-Man. Mais Peter Parker va se rendre compte qu???il fait face ?? un conflit de bien plus grande ampleur. ??tre Spider-Man, quoi de plus grisant ? Peter Parker trouve son bonheur entre sa vie de h??ros, bondissant d???un gratte-ciel ?? l???autre, et les doux moments pass??s aux c??t?? de Gwen. Mais ??tre Spider-Man a un prix : il est le seul ?? pouvoir prot??ger ses concitoyens new-yorkais des abominables m??chants qui menacent la ville.  ',
    2014,'spiderman-destin.jpg',141,13);
INSERT INTO films VALUES (NULL,'The Amazing Spider-Man','Abandonn?? par ses parents lorsqu???il ??tait enfant, Peter Parker a ??t?? ??lev?? par son oncle Ben et sa tante May. Il est aujourd???hui au lyc??e, mais il a du mal ?? s???int??grer. Comme la plupart des adolescents de son ??ge, Peter essaie de comprendre qui il est et d???accepter son parcours. Amoureux pour la premi??re fois, lui et Gwen Stacy d??couvrent les sentiments, l???engagement et les secrets. En retrouvant une myst??rieuse mallette ayant appartenu ?? son p??re, Peter entame une qu??te pour ??lucider la disparition de ses parents, ce qui le conduit rapidement ?? Oscorp et au laboratoire du docteur Curt Connors, l???ancien associ?? de son p??re. Spider-Man va bient??t se retrouver face au L??zard, l???alter ego de Connors. En d??cidant d???utiliser ses pouvoirs, il va choisir son destin??? ',
    2012,'amazing-spiderman.jpg',137,13);

INSERT INTO films VALUES (NULL,'X-Men: Le Commencement','Avant que les mutants n???aient r??v??l?? leur existence au monde, et avant que Charles Xavier et Erik Lehnsherr ne deviennent le Professeur X et Magneto, ils n?????taient encore que deux jeunes hommes d??couvrant leurs pouvoirs pour la premi??re fois. Avant de devenir les pires ennemis, ils ??taient encore amis, et travaillaient avec d???autres mutants pour emp??cher la destruction du monde, l???Armageddon. Au cours de cette op??ration, le conflit naissant entre les deux hommes s???accentua, et la guerre ??ternelle entre la Confr??rie de Magneto et les X-Men du Professeur X ??clata??? X-Men : le commencement nous entra??ne aux origines de la saga X-Men, r??v??lant une histoire secr??te autour des ??v??nements majeurs du XXe si??cle. ',
    2011,'x-men.jpg',130,14);
INSERT INTO films VALUES (NULL,'Stardust, le myst??re de l\'??toile','l ??tait une fois un petit village anglais si tranquille qu\'on aurait pu le croire endormi. Nich?? au creux d\'une vall??e, il devait son nom inhabituel - "Wall" - au mur d\'enceinte qui depuis des si??cles dissuadait ses habitants de s\'aventurer dans le royaume voisin, peupl?? de lutins, sorci??res, pirates volants et autres engeances malfaisantes. Un jour, un candide jeune homme, Tristan, qui convoitait la plus jolie fille de Wall, s\'engagea ?? lui rapporter en gage de son amour... une ??toile tomb??e du ciel. Pour honorer sa promesse, il fit ce que personne n\'avait encore os?? : il escalada le mur interdit et p??n??tra dans le royaume magique de Stormhold... ',
    2007,'stardust.jpg',122,14);

INSERT INTO films VALUES (NULL,'X-Men: Days of Future Past','Les X-Men envoient Wolverine dans le pass?? pour changer un ??v??nement historique majeur, qui pourrait impacter mondialement humains et mutants. ',
    2014,'x-men-days.jpg',132,15);
INSERT INTO films VALUES (NULL,'Usual Suspects','Une l??gende du crime contraint cinq malfrats ?? aller s\'acquitter d\'une t??che tr??s p??rilleuse. Ceux qui survivent pourront se partager un butin de 91 millions de dollars. ',
    1995,'usual-suspects.jpg',106,15);

INSERT INTO films VALUES (NULL,'Happiness Therapy','La vie r??serve parfois quelques surprises... Pat Solatano a tout perdu : sa maison, son travail et sa femme. Il se retrouve m??me dans l???obligation d???emm??nager chez ses parents. Malgr?? tout, Pat affiche un optimisme ?? toute ??preuve et est d??termin?? ?? se reconstruire et ?? renouer avec son ex-femme.
Rapidement, il rencontre Tiffany, une jolie jeune femme ayant eu un parcours mouvement??. Tiffany se propose d???aider Pat ?? reconqu??rir sa femme, ?? condition qu???il lui rende un service en retour. Un lien inattendu commence ?? se former entre eux et, ensemble, ils vont essayer de reprendre en main leurs vies respectives. ',
2013,'happiness.jpg',122,16);

INSERT INTO films VALUES (NULL,'Drive','Un jeune homme solitaire, "The Driver", conduit le jour ?? Hollywood pour le cin??ma en tant que cascadeur et la nuit pour des truands. Ultra professionnel et peu bavard, il a son propre code de conduite. Jamais il n???a pris part aux crimes de ses employeurs autrement qu???en conduisant - et au volant, il est le meilleur !
Shannon, le manager qui lui d??croche tous ses contrats, propose ?? Bernie Rose, un malfrat notoire, d???investir dans un v??hicule pour que son poulain puisse affronter les circuits de stock-car professionnels. Celui-ci accepte mais impose son associ??, Nino, dans le projet.
C???est alors que la route du pilote croise celle d???Irene et de son jeune fils. Pour la premi??re fois de sa vie, il n???est plus seul.',2011,'drive.jpg',100,17);

INSERT INTO films VALUES (NULL,'The Place Beyond the Pines','Cascadeur ?? moto, Luke est r??put?? pour son spectaculaire num??ro du ??globe de la mort??. Quand son spectacle itin??rant revient ?? Schenectady, dans l?????tat de New York, il d??couvre que Romina, avec qui il avait eu une aventure, vient de donner naissance ?? son fils??? Pour subvenir aux besoins de ceux qui sont d??sormais sa famille, Luke quitte le spectacle et commet une s??rie de braquages. ',
    2013,'place-pines.jpg',140,18);

INSERT INTO films VALUES (NULL,'American Beauty','Une maison de r??ve, un pavillon bourgeois discr??tement cossu dissimule dans une banlieue r??sidentielle, c\'est ici que r??sident Lester Burnhamm, sa femme Carolyn et leur fille Jane. L\'agitation du monde et sa violence semblent bien loin ici. Mais derri??re cette respectable fa??ade se tisse une ??trange et grin??ante tragi-com??die familiale ou d??sirs inavou??s, frustrations et violences refoul??es conduiront inexorablement un homme vers la mort. ',
    2000,'american-b.jpg',122,19);
INSERT INTO films VALUES (NULL,'Skyfall','Lorsque la derni??re mission de Bond tourne mal, plusieurs agents infiltr??s se retrouvent expos??s dans le monde entier. Le MI6 est attaqu??, et M est oblig??e de relocaliser l???Agence. Ces ??v??nements ??branlent son autorit??, et elle est remise en cause par Mallory, le nouveau pr??sident de l???ISC, le comit?? charg?? du renseignement et de la s??curit??. Le MI6 est ?? pr??sent sous le coup d???une double menace, int??rieure et ext??rieure. Il ne reste ?? M qu???un seul alli?? de confiance vers qui se tourner : Bond. Plus que jamais, 007 va devoir agir dans l???ombre. Avec l???aide d???Eve, un agent de terrain, il se lance sur la piste du myst??rieux Silva, dont il doit identifier co??te que co??te l???objectif secret et mortel??? ',
    2012,'skyfall.jpg',143,19);

INSERT INTO films VALUES (NULL,'American History X','A travers l\'histoire d\'une famille am??ricaine, ce film tente d\'expliquer l\'origine du racisme et de l\'extr??misme aux ??tats-Unis. Il raconte l\'histoire de Derek qui, voulant venger la mort de son p??re, abattu par un dealer noir, a ??pous?? les th??ses racistes d\'un groupuscule de militants d\'extr??me droite et s\'est mis au service de son leader, brutal th??oricien pr??nant la supr??matie de la race blanche. Ces th??ories le m??neront ?? commettre un double meurtre entrainant son jeune fr??re, Danny, dans la spirale de la haine. ',
    1999,'american-historyX.jpg',119,20);

INSERT INTO films VALUES (NULL,'La Vie de David Gale',' Militant contre la peine capitale au Texas, le docteur David Gale, un professeur d\'universit??, se retrouve ?? tort condamn?? ?? mort pour le viol et le meurtre de l\'activiste Constance Harraway. Dans sa cellule, il re??oit Elizabeth Bloom, une journaliste qui mettra tout en ??uvre pour prouver son innocence. Mais y parviendra-t-elle ? ',
    2003,'david-gale.jpg',130,21);

INSERT INTO films VALUES (NULL,'Je suis une l??gende','Robert Neville ??tait un savant de haut niveau et de r??putation mondiale, mais il en aurait fallu plus pour stopper les ravages de cet incurable et terrifiant virus d\'origine humaine. Myst??rieusement immunis?? contre le mal, Neville est aujourd\'hui le dernier homme ?? hanter les ruines de New York. Peut-??tre le dernier homme sur Terre... Depuis trois ans, il diffuse chaque jour des messages radio dans le fol espoir de trouver d\'autres survivants. Nul n\'a encore r??pondu.
Mais Neville n\'est pas seul. Des mutants, victimes de cette peste moderne - on les appelle les "Infect??s" - r??dent dans les t??n??bres... observent ses moindres gestes, guettent sa premi??re erreur. Devenu l\'ultime espoir de l\'humanit??, Neville se consacre tout entier ?? sa mission : venir ?? bout du virus, en annuler les terribles effets en se servant de son propre sang.'
,2007,'legende.jpg',100,22);
INSERT INTO films VALUES (NULL,'De l\'eau pour les ??l??phants','1931, p??riode de Grande D??pression aux Etats-Unis. A la suite d\'une trag??die familiale, Jacob, un jeune ??tudiant en ??cole v??t??rinaire, se retrouve subitement plong?? dans la mis??re et rejoint par hasard un cirque itin??rant de seconde classe. Il se fait accepter en ??change des soins qu???il pourra apporter aux animaux et ne tarde pas ?? tomber sous le charme de la belle ??cuy??re Marl??ne. Elle est l\'??pouse du directeur du cirque, un ??tre d???une rare violence et totalement impr??visible. Derri??re la beaut?? et la magie des spectacles, Jacob d??couvre un univers impitoyable et mis??reux. Lorsqu???une ??l??phante rejoint le cirque, Marl??ne et Jacob se rapprochent l???un de l???autre et pr??parent un nouveau spectacle qui permet un temps de renouer avec le succ??s. Mais leurs sentiments deviennent de plus en plus perceptibles et sous les yeux d\'August, cette histoire d\'amour les met irr??m??diablement en danger.',
    2011,'eau-elephants.jpg',115,22);

INSERT INTO films VALUES (NULL,'Eternal Sunshine of the Spotless Mind','Joel et Clementine ne voient plus que les mauvais c??t??s de leur tumultueuse histoire d\'amour, au point que celle-ci fait effacer de sa m??moire toute trace de cette relation. Effondr??, Joel contacte l\'inventeur du proc??d?? Lacuna, le Dr. Mierzwiak, pour qu\'il extirpe ??galement de sa m??moire tout ce qui le rattachait ?? Clementine. Deux techniciens, Stan et Patrick, s\'installent ?? son domicile et se mettent ?? l\'oeuvre, en pr??sence de la secr??taire, Mary. Les souvenirs commencent ?? d??filer dans la t??te de Joel, des plus r??cents aux plus
anciens, et s\'envolent un ?? un, ?? jamais.',2004,'eternal.jpg',108,23);

INSERT INTO films VALUES (NULL,'Les Evad??s','En 1947, Andy Dufresne, un jeune banquier, est condamn?? ?? la prison ?? vie pour le meurtre de sa femme et de son amant. Ayant beau clamer son innocence, il est emprisonn?? ?? Shawshank, le p??nitencier le plus s??v??re de l\'Etat du Maine. Il y fait la rencontre de Red, un Noir d??sabus??, d??tenu depuis vingt ans. Commence alors une grande histoire d\'amiti?? entre les deux hommes... ',
    1995,'shawshank.jpg',140,24);

INSERT INTO films VALUES (NULL,'Beetlejuice','Pour avoir voulu sauver un chien, Adam et Barbara Maitland passent tout de go dans l\'autre monde. Peu apr??s, occupants invisibles de leur antique demeure ils la voient envahie par une riche et bruyante famille new-yorkaise. Rien ?? redire jusqu\'au jour o?? cette honorable famille entreprend de donner un cachet plus urbain ?? la vieille demeure. Adam et Barbara, scandalis??s, d??cident de d??loger les intrus. Mais leurs classiques fant??mes et autres sortil??ges ne font aucun effet. C\'est alors qu\'ils font appel ?? un "bio-exorciste" freelance connu sous le sobriquet de Beetlejuice. ',1988,'beetlejuice.jpg',92,25);
INSERT INTO films VALUES (NULL,'Sleepy Hollow, la l??gende du cavalier sans t??te','En 1799, dans une bourgade de La Nouvelle-Angleterre, plusieurs cadavres sont successivement retrouv??s d??capit??s. Les t??tes ont disparu. Terrifi??s, les habitants sont persuad??s que ces meurtres sont commis par un ??trange et furieux cavalier, dont la rumeur pr??tend qu\'il est lui-m??me sans t??te. Les autorit??s new-yorkaises envoient alors leur plus fin limier pour ??claircir ce myst??re. Ichabod Crane ne croit ni aux l??gendes, ni aux vengeances post-mortem. Mais, ?? peine arrive, il succombe au charme ??trange et v??n??neux de la belle Katrina Van Tassel.',
    2000,'sleepy.jpg',105,25);
INSERT INTO films VALUES (NULL,'Big Fish','L\'histoire ?? la fois dr??le et poignante d\'Edward Bloom, un p??re d??bordant d\'imagination, et de son fils William. Ce dernier retourne au domicile familial apr??s l\'avoir quitt?? longtemps auparavant, pour ??tre au chevet de son p??re, atteint d\'un cancer. Il souhaite mieux le conna??tre et d??couvrir ses secrets avant qu\'il ne soit trop tard. L\'aventure d??butera lorsque William tentera de discerner le vrai du faux dans les propos de son p??re mourant. ',
    2004,'big-fish.jpg',125,25);
INSERT INTO films VALUES (NULL,'Charlie et la chocolaterie','Charlie est un enfant issu d\'une famille pauvre. Travaillant pour subvenir aux besoins des siens, il doit ??conomiser chaque penny, et ne peut s\'offrir les friandises dont raffolent les enfants de son ??ge. Pour obtenir son comptant de sucreries, il participe ?? un concours organis?? par l\'inqui??tant Willy Wonka, le propri??taire de la fabrique de chocolat de la ville. Celui qui d??couvrira l\'un des cinq tickets d\'or que Wonka a cach?? dans les barres de chocolat de sa fabrication gagnera une vie de sucreries. ',
    2005,'charlie.jpg',116,25);

INSERT INTO films VALUES (NULL,'Casino Royale','Pour sa premi??re mission, James Bond affronte le tout-puissant banquier priv?? du terrorisme international, Le Chiffre. Pour achever de le ruiner et d??manteler le plus grand r??seau criminel qui soit, Bond doit le battre lors d\'une partie de poker ?? haut risque au Casino Royale. La tr??s belle Vesper, attach??e au Tr??sor, l\'accompagne afin de veiller ?? ce que l\'agent 007 prenne soin de l\'argent du gouvernement britannique qui lui sert de mise, mais rien ne va se passer comme pr??vu. ',
    2006,'casino.jpg',138,26);

INSERT INTO genres VALUES (NULL,'Science-fiction');
INSERT INTO genres VALUES (NULL,'Fantastique');
INSERT INTO genres VALUES (NULL,'Thriller');
INSERT INTO genres VALUES (NULL,'Action');
INSERT INTO genres VALUES (NULL,'Drame');
INSERT INTO genres VALUES (NULL,'Horreur');
INSERT INTO genres VALUES (NULL,'Romance');
INSERT INTO genres VALUES (NULL,'Com??die');
INSERT INTO genres VALUES (NULL,'Biopic');
INSERT INTO genres VALUES (NULL,'Policier');
INSERT INTO genres VALUES (NULL,'Historique');
INSERT INTO genres VALUES (NULL,'Western');
INSERT INTO genres VALUES (NULL,'Guerre');
INSERT INTO genres VALUES (NULL,'Aventure');
INSERT INTO genres VALUES (NULL,'Peplum');
INSERT INTO genres VALUES (NULL,'Espionage');

INSERT INTO films_genres VALUES (1,1);
INSERT INTO films_genres VALUES (1,5);
INSERT INTO films_genres VALUES (2,3);
INSERT INTO films_genres VALUES (2,4);
INSERT INTO films_genres VALUES (2,5);
INSERT INTO films_genres VALUES (3,1);
INSERT INTO films_genres VALUES (3,3);
INSERT INTO films_genres VALUES (4,3);
INSERT INTO films_genres VALUES (4,4);
INSERT INTO films_genres VALUES (5,3);
INSERT INTO films_genres VALUES (5,2);
INSERT INTO films_genres VALUES (5,5);
INSERT INTO films_genres VALUES (6,4);
INSERT INTO films_genres VALUES (6,3);
INSERT INTO films_genres VALUES (7,3);
INSERT INTO films_genres VALUES (8,3);
INSERT INTO films_genres VALUES (8,5);
INSERT INTO films_genres VALUES (9,3);
INSERT INTO films_genres VALUES (9,5);
INSERT INTO films_genres VALUES (10,5);
INSERT INTO films_genres VALUES (11,2);
INSERT INTO films_genres VALUES (11,7);
INSERT INTO films_genres VALUES (12,3);
INSERT INTO films_genres VALUES (12,5);
INSERT INTO films_genres VALUES (13,3);
INSERT INTO films_genres VALUES (14,3);
INSERT INTO films_genres VALUES (15,9);
INSERT INTO films_genres VALUES (15,5);
INSERT INTO films_genres VALUES (15,10);
INSERT INTO films_genres VALUES (16,3);
INSERT INTO films_genres VALUES (17,3);
INSERT INTO films_genres VALUES (17,5);
INSERT INTO films_genres VALUES (17,10);
INSERT INTO films_genres VALUES (18,11);
INSERT INTO films_genres VALUES (18,4);
INSERT INTO films_genres VALUES (18,5);
INSERT INTO films_genres VALUES (19,12);
INSERT INTO films_genres VALUES (20,13);
INSERT INTO films_genres VALUES (20,4);
INSERT INTO films_genres VALUES (21,4);
INSERT INTO films_genres VALUES (21,10);
INSERT INTO films_genres VALUES (22,4);
INSERT INTO films_genres VALUES (22,14);
INSERT INTO films_genres VALUES (22,2);
INSERT INTO films_genres VALUES (23,3);
INSERT INTO films_genres VALUES (23,2);
INSERT INTO films_genres VALUES (23,4);
INSERT INTO films_genres VALUES (24,4);
INSERT INTO films_genres VALUES (24,3);
INSERT INTO films_genres VALUES (24,1);
INSERT INTO films_genres VALUES (25,15);
INSERT INTO films_genres VALUES (25,4);
INSERT INTO films_genres VALUES (25,13);
INSERT INTO films_genres VALUES (26,5);
INSERT INTO films_genres VALUES (27,3);
INSERT INTO films_genres VALUES (27,5);
INSERT INTO films_genres VALUES (28,5);
INSERT INTO films_genres VALUES (29,10);
INSERT INTO films_genres VALUES (29,5);
INSERT INTO films_genres VALUES (29,3);
INSERT INTO films_genres VALUES (30,8);
INSERT INTO films_genres VALUES (31,8);
INSERT INTO films_genres VALUES (32,5);
INSERT INTO films_genres VALUES (33,1);
INSERT INTO films_genres VALUES (33,5);
INSERT INTO films_genres VALUES (34,2);
INSERT INTO films_genres VALUES (34,5);
INSERT INTO films_genres VALUES (35,1);
INSERT INTO films_genres VALUES (35,4);
INSERT INTO films_genres VALUES (36,1);
INSERT INTO films_genres VALUES (36,4);
INSERT INTO films_genres VALUES (37,1);
INSERT INTO films_genres VALUES (37,4);
INSERT INTO films_genres VALUES (38,1);
INSERT INTO films_genres VALUES (38,4);
INSERT INTO films_genres VALUES (39,1);
INSERT INTO films_genres VALUES (39,4);
INSERT INTO films_genres VALUES (40,4);
INSERT INTO films_genres VALUES (40,2);
INSERT INTO films_genres VALUES (41,1);
INSERT INTO films_genres VALUES (41,2);
INSERT INTO films_genres VALUES (43,2);
INSERT INTO films_genres VALUES (43,14);
INSERT INTO films_genres VALUES (43,8);
INSERT INTO films_genres VALUES (44,1);
INSERT INTO films_genres VALUES (44,4);
INSERT INTO films_genres VALUES (45,3);
INSERT INTO films_genres VALUES (45,10);
INSERT INTO films_genres VALUES (47,5);
INSERT INTO films_genres VALUES (47,3);
INSERT INTO films_genres VALUES (48,5);
INSERT INTO films_genres VALUES (48,10);
INSERT INTO films_genres VALUES (49,5);
INSERT INTO films_genres VALUES (50,4);
INSERT INTO films_genres VALUES (50,15);
INSERT INTO films_genres VALUES (51,5);
INSERT INTO films_genres VALUES (52,5);
INSERT INTO films_genres VALUES (53,1);
INSERT INTO films_genres VALUES (53,3);
INSERT INTO films_genres VALUES (54,5);
INSERT INTO films_genres VALUES (54,7);
INSERT INTO films_genres VALUES (55,2);
INSERT INTO films_genres VALUES (55,5);
INSERT INTO films_genres VALUES (55,7);
INSERT INTO films_genres VALUES (56,5);
INSERT INTO films_genres VALUES (57,2);
INSERT INTO films_genres VALUES (58,2);
INSERT INTO films_genres VALUES (58,3);
INSERT INTO films_genres VALUES (59,5);
INSERT INTO films_genres VALUES (59,14);
INSERT INTO films_genres VALUES (60,8);
INSERT INTO films_genres VALUES (60,1);
INSERT INTO films_genres VALUES (61,4);
INSERT INTO films_genres VALUES (61,15);

INSERT INTO acteurs VALUES (NULL,'Matthew McConaughey');
INSERT INTO acteurs VALUES (NULL,'Anne Hathaway');
INSERT INTO acteurs VALUES (NULL,'Michael Caine');
INSERT INTO acteurs VALUES (NULL,'Christian Bale');
INSERT INTO acteurs VALUES (NULL,'Gary Oldman');
INSERT INTO acteurs VALUES (NULL,'Tom Hardy');
INSERT INTO acteurs VALUES (NULL,'Leonardo Di Caprio');
INSERT INTO acteurs VALUES (NULL,'Marion Cotillard');
INSERT INTO acteurs VALUES (NULL,'Ellen Page');
INSERT INTO acteurs VALUES (NULL,'Joseph Gordon-Levitt ');
INSERT INTO acteurs VALUES (NULL,'Cillian Murphy ');
INSERT INTO acteurs VALUES (NULL,'Heath Ledger');
INSERT INTO acteurs VALUES (NULL,'Aaron Eckhart');
INSERT INTO acteurs VALUES (NULL,'Maggie Gyllenhaal');
INSERT INTO acteurs VALUES (NULL,'Morgan Freeman');
INSERT INTO acteurs VALUES (NULL,'Hugh Jackman');
INSERT INTO acteurs VALUES (NULL,'Rebecca Hall');
INSERT INTO acteurs VALUES (NULL,'Scarlett Johansson');
INSERT INTO acteurs VALUES (NULL,'Guy Pearce');
INSERT INTO acteurs VALUES (NULL,'Carrie-Anne Moss');
INSERT INTO acteurs VALUES (NULL,'Ben Affleck');
INSERT INTO acteurs VALUES (NULL,'Rosamund Pike');
INSERT INTO acteurs VALUES (NULL,'Daniel Craig');
INSERT INTO acteurs VALUES (NULL,'Rooney Mara');
INSERT INTO acteurs VALUES (NULL,'Christopher Plummer');
INSERT INTO acteurs VALUES (NULL,'Jesse Eisenberg');
INSERT INTO acteurs VALUES (NULL,'Andrew Garfield ');
INSERT INTO acteurs VALUES (NULL,'Justin Timberlake');
INSERT INTO acteurs VALUES (NULL,'Brad Pitt');
INSERT INTO acteurs VALUES (NULL,'Cate Blanchett');
INSERT INTO acteurs VALUES (NULL,'Edward Norton');
INSERT INTO acteurs VALUES (NULL,'Helena Bonham Carter');
INSERT INTO acteurs VALUES (NULL,'Michael Douglas');
INSERT INTO acteurs VALUES (NULL,'Sean Penn');
INSERT INTO acteurs VALUES (NULL,'Jonah Hill');
INSERT INTO acteurs VALUES (NULL,'Margot Robbie');
INSERT INTO acteurs VALUES (NULL,'Mark Ruffalo');
INSERT INTO acteurs VALUES (NULL,'Ben Kingsley');
INSERT INTO acteurs VALUES (NULL,'Jack Nicholson');
INSERT INTO acteurs VALUES (NULL,'Matt Damon');
INSERT INTO acteurs VALUES (NULL,'Charlie Sheen');
INSERT INTO acteurs VALUES (NULL,'Cameron Diaz');
INSERT INTO acteurs VALUES (NULL,'Daniel Day-Lewis');
INSERT INTO acteurs VALUES (NULL,'Jamie Foxx');
INSERT INTO acteurs VALUES (NULL,'Christoph Waltz');
INSERT INTO acteurs VALUES (NULL,'M??lanie Laurent');
INSERT INTO acteurs VALUES (NULL,'Diane Kr??ger');
INSERT INTO acteurs VALUES (NULL,'John Travolta');
INSERT INTO acteurs VALUES (NULL,'Uma Thurman');
INSERT INTO acteurs VALUES (NULL,'Samuel L. Jackson');
INSERT INTO acteurs VALUES (NULL,'Henry Cavill');
INSERT INTO acteurs VALUES (NULL,'Amy Adams');
INSERT INTO acteurs VALUES (NULL,'Michael Shannon');
INSERT INTO acteurs VALUES (NULL,'Emily Browning');
INSERT INTO acteurs VALUES (NULL,'Abbie Cornish');
INSERT INTO acteurs VALUES (NULL,'Jena Malone');
INSERT INTO acteurs VALUES (NULL,'Jackie Earle Haley');
INSERT INTO acteurs VALUES (NULL,'Patrick Wilson');
INSERT INTO acteurs VALUES (NULL,'Malin Ackerman');
INSERT INTO acteurs VALUES (NULL,'Jeffrey Dean Morgan ');
INSERT INTO acteurs VALUES (NULL,'Gerard Butler');
INSERT INTO acteurs VALUES (NULL,'Lena Headey');
INSERT INTO acteurs VALUES (NULL,'Michael Fassbender');
INSERT INTO acteurs VALUES (NULL,'Clint Eastwood');
INSERT INTO acteurs VALUES (NULL,'Bee Vang');
INSERT INTO acteurs VALUES (NULL,'Angelina Jolie');
INSERT INTO acteurs VALUES (NULL,'John Malkovich');
INSERT INTO acteurs VALUES (NULL,'Hilary Swank');
INSERT INTO acteurs VALUES (NULL,'Kevin Bacon');
INSERT INTO acteurs VALUES (NULL,'Tim Robbins');
INSERT INTO acteurs VALUES (NULL,'Simon Pegg');
INSERT INTO acteurs VALUES (NULL,'Nick Frost');
INSERT INTO acteurs VALUES (NULL,'Nathalie Portman');
INSERT INTO acteurs VALUES (NULL,'Vincent Cassel');
INSERT INTO acteurs VALUES (NULL,'Mila Kunis');
INSERT INTO acteurs VALUES (NULL,'Ethan Hawke');
INSERT INTO acteurs VALUES (NULL,'Jude Law');
INSERT INTO acteurs VALUES (NULL,'Halle Berry');
INSERT INTO acteurs VALUES (NULL,'Tom Hanks');
INSERT INTO acteurs VALUES (NULL,'Ben Whishaw');
INSERT INTO acteurs VALUES (NULL,'Laurence Fishburne');
INSERT INTO acteurs VALUES (NULL,'Keanu Reeves');
INSERT INTO acteurs VALUES (NULL,'Hugo Weaving');
INSERT INTO acteurs VALUES (NULL,'Tom Cruise');
INSERT INTO acteurs VALUES (NULL,'Olga Kurylenko');
INSERT INTO acteurs VALUES (NULL,'Chris Pine');
INSERT INTO acteurs VALUES (NULL,'Zachary Quinto');
INSERT INTO acteurs VALUES (NULL,'Benedict Cumberbatch');
INSERT INTO acteurs VALUES (NULL,'Emma Stone');
INSERT INTO acteurs VALUES (NULL,'Rhys Ifans');
INSERT INTO acteurs VALUES (NULL,'James McAvoy');
INSERT INTO acteurs VALUES (NULL,'Jennifer Lawrence');
INSERT INTO acteurs VALUES (NULL,'Robert de Niro');
INSERT INTO acteurs VALUES (NULL,'Michelle Peifer');
INSERT INTO acteurs VALUES (NULL,'Michelle Pfeiffer');
INSERT INTO acteurs VALUES (NULL,'Claire Danes');
INSERT INTO acteurs VALUES (NULL,'Benicio del Toro');
INSERT INTO acteurs VALUES (NULL,'Kevin Spacey');
INSERT INTO acteurs VALUES (NULL,'Gabriel Byrne');
INSERT INTO acteurs VALUES (NULL,'Ryan Gosling');
INSERT INTO acteurs VALUES (NULL,'Bradley Cooper');
INSERT INTO acteurs VALUES (NULL,'Carey Mulligan');
INSERT INTO acteurs VALUES (NULL,'Eva Mendes');
INSERT INTO acteurs VALUES (NULL,'Anette Bening');
INSERT INTO acteurs VALUES (NULL,'Thora Birch');
INSERT INTO acteurs VALUES (NULL,'Eva Green');
INSERT INTO acteurs VALUES (NULL,'Javier Bardem');
INSERT INTO acteurs VALUES (NULL,'Judi Dench');
INSERT INTO acteurs VALUES (NULL,'B??r??nice Marlohe');
INSERT INTO acteurs VALUES (NULL,'Edward Furlong');
INSERT INTO acteurs VALUES (NULL,'Kate Winslet');
INSERT INTO acteurs VALUES (NULL,'Laura Linney');
INSERT INTO acteurs VALUES (NULL,'Will Smith');
INSERT INTO acteurs VALUES (NULL,'Reese Witherspoon');
INSERT INTO acteurs VALUES (NULL,'Robert Pattinson');
INSERT INTO acteurs VALUES (NULL,'Kirsten Dunst');
INSERT INTO acteurs VALUES (NULL,'Jim Carrey');
INSERT INTO acteurs VALUES (NULL,'Geena Davis');
INSERT INTO acteurs VALUES (NULL,'Micheal Keaton');
INSERT INTO acteurs VALUES (NULL,'Alec Baldwin');
INSERT INTO acteurs VALUES (NULL,'Winona Ryder');
INSERT INTO acteurs VALUES (NULL,'Johnny Depp');
INSERT INTO acteurs VALUES (NULL,'Cristina Ricci');
INSERT INTO acteurs VALUES (NULL,'Christopher Walken');
INSERT INTO acteurs VALUES (NULL,'Ewan McGregor');
INSERT INTO acteurs VALUES (NULL,'Albert Finney');
INSERT INTO acteurs VALUES (NULL,'Jessica Lange');
INSERT INTO acteurs VALUES (NULL,'Freddy Highmore');
INSERT INTO acteurs VALUES (NULL,'Liam Neeson');

INSERT INTO films_acteurs VALUES (1,1);
INSERT INTO films_acteurs VALUES (1,2);
INSERT INTO films_acteurs VALUES (1,3);
INSERT INTO films_acteurs VALUES (2,4);
INSERT INTO films_acteurs VALUES (2,5);
INSERT INTO films_acteurs VALUES (2,6);
INSERT INTO films_acteurs VALUES (2,3);
INSERT INTO films_acteurs VALUES (2,15);
INSERT INTO films_acteurs VALUES (3,7);
INSERT INTO films_acteurs VALUES (3,8);
INSERT INTO films_acteurs VALUES (3,9);
INSERT INTO films_acteurs VALUES (3,10);
INSERT INTO films_acteurs VALUES (3,6);
INSERT INTO films_acteurs VALUES (3,2);
INSERT INTO films_acteurs VALUES (3,11);
INSERT INTO films_acteurs VALUES (4,4);
INSERT INTO films_acteurs VALUES (4,12);
INSERT INTO films_acteurs VALUES (4,5);
INSERT INTO films_acteurs VALUES (4,3);
INSERT INTO films_acteurs VALUES (4,14);
INSERT INTO films_acteurs VALUES (4,13);
INSERT INTO films_acteurs VALUES (5,4);
INSERT INTO films_acteurs VALUES (5,16);
INSERT INTO films_acteurs VALUES (5,17);
INSERT INTO films_acteurs VALUES (5,18);
INSERT INTO films_acteurs VALUES (6,4);
INSERT INTO films_acteurs VALUES (6,3);
INSERT INTO films_acteurs VALUES (6,62);
INSERT INTO films_acteurs VALUES (7,19);
INSERT INTO films_acteurs VALUES (7,20);
INSERT INTO films_acteurs VALUES (8,21);
INSERT INTO films_acteurs VALUES (8,22);
INSERT INTO films_acteurs VALUES (9,23);
INSERT INTO films_acteurs VALUES (9,24);
INSERT INTO films_acteurs VALUES (9,25);
INSERT INTO films_acteurs VALUES (10,26);
INSERT INTO films_acteurs VALUES (10,27);
INSERT INTO films_acteurs VALUES (10,28);
INSERT INTO films_acteurs VALUES (11,29);
INSERT INTO films_acteurs VALUES (11,30);
INSERT INTO films_acteurs VALUES (12,31);
INSERT INTO films_acteurs VALUES (12,29);
INSERT INTO films_acteurs VALUES (12,32);
INSERT INTO films_acteurs VALUES (13,33);
INSERT INTO films_acteurs VALUES (13,34);
INSERT INTO films_acteurs VALUES (14,29);
INSERT INTO films_acteurs VALUES (14,15);
INSERT INTO films_acteurs VALUES (14,98);
INSERT INTO films_acteurs VALUES (15,7);
INSERT INTO films_acteurs VALUES (15,35);
INSERT INTO films_acteurs VALUES (15,36);
INSERT INTO films_acteurs VALUES (16,7);
INSERT INTO films_acteurs VALUES (16,37);
INSERT INTO films_acteurs VALUES (16,38);
INSERT INTO films_acteurs VALUES (17,7);
INSERT INTO films_acteurs VALUES (17,39);
INSERT INTO films_acteurs VALUES (17,40);
INSERT INTO films_acteurs VALUES (17,41);
INSERT INTO films_acteurs VALUES (18,7);
INSERT INTO films_acteurs VALUES (18,42);
INSERT INTO films_acteurs VALUES (18,43);
INSERT INTO films_acteurs VALUES (19,44);
INSERT INTO films_acteurs VALUES (19,7);
INSERT INTO films_acteurs VALUES (19,45);
INSERT INTO films_acteurs VALUES (20,29);
INSERT INTO films_acteurs VALUES (20,45);
INSERT INTO films_acteurs VALUES (20,46);
INSERT INTO films_acteurs VALUES (20,47);
INSERT INTO films_acteurs VALUES (21,48);
INSERT INTO films_acteurs VALUES (21,49);
INSERT INTO films_acteurs VALUES (21,50);
INSERT INTO films_acteurs VALUES (22,51);
INSERT INTO films_acteurs VALUES (22,52);
INSERT INTO films_acteurs VALUES (22,53);
INSERT INTO films_acteurs VALUES (23,54);
INSERT INTO films_acteurs VALUES (23,55);
INSERT INTO films_acteurs VALUES (23,56);
INSERT INTO films_acteurs VALUES (24,57);
INSERT INTO films_acteurs VALUES (24,58);
INSERT INTO films_acteurs VALUES (24,59);
INSERT INTO films_acteurs VALUES (24,60);
INSERT INTO films_acteurs VALUES (25,61);
INSERT INTO films_acteurs VALUES (25,62);
INSERT INTO films_acteurs VALUES (25,63);
INSERT INTO films_acteurs VALUES (26,64);
INSERT INTO films_acteurs VALUES (26,65);
INSERT INTO films_acteurs VALUES (27,66);
INSERT INTO films_acteurs VALUES (27,67);
INSERT INTO films_acteurs VALUES (28,64);
INSERT INTO films_acteurs VALUES (28,15);
INSERT INTO films_acteurs VALUES (28,68);
INSERT INTO films_acteurs VALUES (29,69);
INSERT INTO films_acteurs VALUES (29,70);
INSERT INTO films_acteurs VALUES (29,34);
INSERT INTO films_acteurs VALUES (30,71);
INSERT INTO films_acteurs VALUES (30,72);
INSERT INTO films_acteurs VALUES (31,71);
INSERT INTO films_acteurs VALUES (31,72);
INSERT INTO films_acteurs VALUES (32,73);
INSERT INTO films_acteurs VALUES (32,74);
INSERT INTO films_acteurs VALUES (32,75);
INSERT INTO films_acteurs VALUES (33,76);
INSERT INTO films_acteurs VALUES (33,77);
INSERT INTO films_acteurs VALUES (33,49);
INSERT INTO films_acteurs VALUES (34,78);
INSERT INTO films_acteurs VALUES (34,79);
INSERT INTO films_acteurs VALUES (34,80);
INSERT INTO films_acteurs VALUES (35,81);
INSERT INTO films_acteurs VALUES (35,82);
INSERT INTO films_acteurs VALUES (35,20);
INSERT INTO films_acteurs VALUES (35,83);
INSERT INTO films_acteurs VALUES (36,81);
INSERT INTO films_acteurs VALUES (36,82);
INSERT INTO films_acteurs VALUES (36,20);
INSERT INTO films_acteurs VALUES (36,83);
INSERT INTO films_acteurs VALUES (37,81);
INSERT INTO films_acteurs VALUES (37,82);
INSERT INTO films_acteurs VALUES (37,20);
INSERT INTO films_acteurs VALUES (37,83);
INSERT INTO films_acteurs VALUES (38,84);
INSERT INTO films_acteurs VALUES (38,85);
INSERT INTO films_acteurs VALUES (39,86);
INSERT INTO films_acteurs VALUES (39,87);
INSERT INTO films_acteurs VALUES (39,88);
INSERT INTO films_acteurs VALUES (40,27);
INSERT INTO films_acteurs VALUES (40,89);
INSERT INTO films_acteurs VALUES (40,44);
INSERT INTO films_acteurs VALUES (41,27);
INSERT INTO films_acteurs VALUES (41,89);
INSERT INTO films_acteurs VALUES (41,90);
INSERT INTO films_acteurs VALUES (42,91);
INSERT INTO films_acteurs VALUES (42,63);
INSERT INTO films_acteurs VALUES (42,92);
INSERT INTO films_acteurs VALUES (44,91);
INSERT INTO films_acteurs VALUES (44,63);
INSERT INTO films_acteurs VALUES (44,92);
INSERT INTO films_acteurs VALUES (44,16);
INSERT INTO films_acteurs VALUES (43,93);
INSERT INTO films_acteurs VALUES (43,95);
INSERT INTO films_acteurs VALUES (43,96);
INSERT INTO films_acteurs VALUES (45,98);
INSERT INTO films_acteurs VALUES (45,97);
INSERT INTO films_acteurs VALUES (45,99);
INSERT INTO films_acteurs VALUES (46,101);
INSERT INTO films_acteurs VALUES (46,92);
INSERT INTO films_acteurs VALUES (46,93);
INSERT INTO films_acteurs VALUES (47,100);
INSERT INTO films_acteurs VALUES (47,102);
INSERT INTO films_acteurs VALUES (48,100);
INSERT INTO films_acteurs VALUES (48,101);
INSERT INTO films_acteurs VALUES (48,103);
INSERT INTO films_acteurs VALUES (49,98);
INSERT INTO films_acteurs VALUES (49,104);
INSERT INTO films_acteurs VALUES (49,105);
INSERT INTO films_acteurs VALUES (50,23);
INSERT INTO films_acteurs VALUES (50,108);
INSERT INTO films_acteurs VALUES (50,107);
INSERT INTO films_acteurs VALUES (50,109);
INSERT INTO films_acteurs VALUES (51,31);
INSERT INTO films_acteurs VALUES (51,110);
INSERT INTO films_acteurs VALUES (52,98);
INSERT INTO films_acteurs VALUES (52,111);
INSERT INTO films_acteurs VALUES (52,112);
INSERT INTO films_acteurs VALUES (53,113);
INSERT INTO films_acteurs VALUES (54,114);
INSERT INTO films_acteurs VALUES (54,115);
INSERT INTO films_acteurs VALUES (54,45);
INSERT INTO films_acteurs VALUES (55,117);
INSERT INTO films_acteurs VALUES (55,111);
INSERT INTO films_acteurs VALUES (55,116);
INSERT INTO films_acteurs VALUES (56,15);
INSERT INTO films_acteurs VALUES (56,70);
INSERT INTO films_acteurs VALUES (57,118);
INSERT INTO films_acteurs VALUES (57,119);
INSERT INTO films_acteurs VALUES (57,120);
INSERT INTO films_acteurs VALUES (57,121);
INSERT INTO films_acteurs VALUES (58,122);
INSERT INTO films_acteurs VALUES (58,124);
INSERT INTO films_acteurs VALUES (58,123);
INSERT INTO films_acteurs VALUES (59,125);
INSERT INTO films_acteurs VALUES (59,126);
INSERT INTO films_acteurs VALUES (59,127);
INSERT INTO films_acteurs VALUES (60,122);
INSERT INTO films_acteurs VALUES (60,128);
INSERT INTO films_acteurs VALUES (60,32);
INSERT INTO films_acteurs VALUES (61,23);
INSERT INTO films_acteurs VALUES (61,106);
INSERT INTO films_acteurs VALUES (61,108);
