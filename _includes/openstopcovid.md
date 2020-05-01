## Qu’est-ce que le contact tracing

Le traçage numérique des contacts consiste, pour un utilisateur, à installer une application smartphone spécifique qui, à l’aide de la technologie Bluetooth, repère les autres appareils à proximité. En pratique, le téléphone enregistre en mémoire des pseudonymes que les autres appareils diffusent autour d’eux. Le plus souvent chiffrés, ces pseudonymes ne peuvent être compris que par des smartphones équipés de la même application. 

Cette technologie possède  le potentiel ([sans certitude toutefois](https://github.com/DP-3T/documents/issues/224)) de limiter la propagation de la maladie Covid-19 au sein de la population. Ainsi, une application mobile dédiée, développée dans les règles de l’art, pourrait nous permettre de renouer avec un semblant de vie normale, sans pour autant mettre à mal les résultats du confinement qui s’achève. Citons trois avantages à attendre d’une application de traçage :
* Une personne pourra être rapidement informée lorsqu’elle se sera tenue trop longtemps à proximité d’une personne contaminée. 
* Une personne pourra recevoir automatiquement des instructions, de la part des autorités de santé publique, sur les mesures à prendre.
* Une personne pourra, sur une base volontaire, partager avec les épidémiologistes des informations de recherche anonymes en rapport avec la propagation de la maladie sur le territoire.

Pour autant, le traçage numérique ne saurait être une solution à elle seule contre la pandémie. Il ne peut que participer à un dispositif plus large.

##  Pourquoi une solution décentralisée

Lorsqu’un utilisateur est diagnostiqué positif, il est possible de calculer le risque encouru par toutes les personnes croisées récemment par cet utilisateur. Afin de réaliser cette opération, il faut recueillir l’état de santé de la victime, la date correspondant à l’apparition des symptômes et tous les pseudonymes que son smartphone a émis au cours des jours précédents pour s’identifier auprès des autres utilisateurs. En parallèle, il faut également recueillir les pseudonymes que son smartphone a reçu, de la part des autres utilisateurs, pendant la phase d’incubation de la maladie. En combinant ces données une application de traçage peut déterminer le niveau de risque d’exposition de chaque personne.

Le problème ici est moins de savoir comment réaliser ce calcul que de déterminer où il se déroule et quelles sont les données transmises. En se basant sur le protocole DP-3T, conçu par l’EPFL et ses partenaires, OpenStopCovid a choisie d’adopter une réponse décentralisée à ce problème. Cela signifie que le calcul se déroule dans le smartphone des utilisateurs et que les contacts n’en sortent pas. À l’inverse, une solution centralisée consiste nécessairement à envoyer ses contacts pseudonymisés à un serveur distant, une condition préalable à la réalisation des traitements qui à nos yeux est inacceptable.

Nous pensons qu'il est trop risqué de réunir des données de cet ordre dans un serveur central, aussi sécurisé soit-il. Vu les évolutions de l'informatique, ces données anonymes aujourd'hui ne le seront peut-être plus demain. En outre, se pose le risque de centralisation, d’enregistrement et croisement de ces informations avec d'autres informations telles que, par exemple, les journaux systèmes des opérateurs Télécom. L’approche décentralisée comporte elle-aussi des risques, mais ces derniers restent localisés, et donc minimisés, à l’échelle d’un individu. Ces risques sont comparables à celui induit par l'installation de mouchards ou de caméras d’espionnage.

##  Pourquoi une solution 100% libre

Les technologies de contact tracing sont intéressantes d’un point de vue épidémiologique. Mais elles posent, en même temps, un risque pour les libertés individuelles. Ce risque peut surgir de manière franche, en amenant la surveillance généralisée de toute la population. Ou de manière insidieuse, à moyen et long terme, en incitant les personnes à s'accommoder d’un traçage régulier de leurs faits et gestes. Pour réduire ces risques, il est nécessaire de conserver un contrôle citoyen sur le “code source” (plan de fabrication) des applications.

Une stratégie pour garantir ce contrôle consiste à publier le code source de l’application sur des plateformes spécialisées. Ce code source, dit “Open Source”, sera alors accessible à quiconque veut le lire et le tester, dans le but de vérifier qu’aucune menace, vulnérabilité ou comportement frauduleux n’altère l’intégrité des données qui circulent à l’intérieur.

L’autre avantage d’un code source ouvert, c’est de rendre l’application prête à obtenir des contributions de la part de développeurs extérieurs au projet, et non plus seulement de la part d’une équipe restreinte. Aujourd’hui déjà, ces développeurs aident OpenStopCovid à améliorer la sécurité, les performances mais également l’usage et l’ergonomie de l’application et des composants dont elle dépend. Ces contributeurs constituent, en quelques sorte, une équipe de développement illimitée, et internationale.

A l’inverse, un code source fermé se déleste de tout contrôle extérieur encombrant et pose donc, par extension, des problèmes de légitimité et de sécurité à la société dans son ensemble.

##  Les composants disponibles

Les principales composantes du projet sont les suivantes : 

* Une application Android
* Une application Iphone
* Une interface pour les professionnels de santé (tiers de confiance)
* Quelques briques côté serveur assurant la sécurisation du dispositif

L’architecture que nous avons retenue s’appuie directement sur le protocole DP-3T, et utilise plusieurs composants de référence. Notre implémentation est représentée par le schéma suivant : 

![Architecture](img/architecture.png)

##  Comment contribuer

Vous pouvez suivre nos travaux sur GitHub : [https://github.com/OpenStopCovid](https://github.com/OpenStopCovid) 

## Nous contacter

contact@openstopcovid.fr
