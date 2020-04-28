---
layout: page
title: OpenStopCovid
subtitle: Historique du projet et Architecture applicative
---


**Application de traçage numérique éthique et Open Source, alimentée par les contributeurs et la communauté.**

Les applications de traçage numérique utilisant le Bluetooth sur smarpthone ont le potentiel de soutenir nos efforts pour limiter la propagation de COVID-19 et garder un semblant de normalité malgré les mesures de confinement et de prévention:
* les personnes peuvent être rapidement informées qu'elles ont pu être en contact avec une personne infectée
* les personnes peuvent recevoir des instructions sur les mesures à prendre de la part des autorités de santé publique
* les épidémiologistes pourraient recevoir des informations de recherche anonymes ou pseudonymes sur la propagation de la maladie de la part d'utilisateurs volontaires

<hr>
## Pourquoi OpenStopcovid ?

Un certain nombre de difficultés accompagnent la problématique du traçage numérique:
* l'utilisation de Bluetooth LE (Low Energy) pour la détection de proximité des téléphones mobiles à proximité, implique de rester conforme aux standards existants.
* la préservation de la vie privée impose d'encrypter les données personnelles et d'en démanteler l'accès et le stockage dès qu'elles ne sont plus nécessaires.

Récemment, différentes initiatives sont apparues dans le but de pallier ces difficultés techniques. Les plus célèbres sont: 
* [BlueTrace](https://bluetrace.io/) du gouvernement de Singapour
* [DP-3T](https://github.com/DP-3T/documents) de l'École polytechnique fédérale de Lausanne (EPFL)
* [ROBERT](https://github.com/ROBERT-proximity-tracing/documents) issu du projet paneuropéen de recherche de proximité avec préservation de la vie privée (PEPP-PT).

**BlueTrace**. Bien que tous les procoles aient été publiés publiquement, seul BlueTrace propose une [implémentation de référence](https://github.com/OpenTrace-community). Cependant, ce protocole est apparu **avant** que Google et Apple n'annoncent conjointement un [framework spécifique](https://www.apple.com/covid19/contacttracing) de développement destiné aux applications de traçage numérique. En outre, ce protocole est étroitement lié à un fournisseur de services Cloud particulier. Or nous pensons qu'une solution universelle devrait être davantage indépendante.

**ROBERT**. Jusqu'à présent, aucune mise en œuvre de référence n'a été publiée pour ROBERT. De plus, le choix d'une approche centralisée rend cep protocole difficilement compatible avec le framework de traçage numérique imposé par Google et Apple. En effet, le suivi par Bluetooth sur les appareils mobiles nécessite un accès privilégié au système pour fonctionner efficacement.

**DP-3T**. En conséquence, nous avons choisi [DP-3T](https://github.com/DP-3T/documents) comme technologie sous-jacente pour notre implémentation de référence. Nous croyons fermement qu'une application 100% Open Source, facile à installer et Cloud-agnostique, trois conditions indispensables pour sécuriser les utilisateurs, accroître leur confiance et permettre un déploiement à grande échelle à la hauteur des enjeux.

<hr>
## De quoi est composé OpenStopCovid ?

L'architecture globale est représentée par le schéma suivant :

![Architecture](img/architecture.png)

Les principales composantes du projet sont les suivantes :

* [Microservices de base](https://github.com/OpenStopCovid/dp3t-ms)
  - Microservice exposed-keys [pour les utilisateurs] :  pour publier les clés exposées et obtenir une liste des clés exposées
  - Microservice codes [pour les médecins] : pour créer et utiliser des codes de validation destinés à déclarer les patients malades

* [Interface utilisateur pour les médecins](https://github.com/OpenStopCovid/health-authority-ui) 
  - Interface principale pour les professionnels de santé
  - Vise à  générer des codes de validation pour les patients malades

<hr>
![OpenStopCovid](/img/medic-app/interface-medecin.png)
<hr>
![OpenStopCovid](/img/medic-app/interface-medecin2.png)
<hr>
![OpenStopCovid](/img/medic-app/interface-medecin3.png)
<hr>

* [Application Android](https://github.com/fmauquie/react-native-dp3t-sdk) s'appuyant sur le [DP-3T SDK](https://github.com/DP-3T/dp3t-sdk-android) pour les utilisateurs finaux
* [Application iOS](https://github.com/fmauquie/react-native-dp3t-sdk) s'appuyant sur le [DP-3T SDK](https://github.com/DP-3T/dp3t-sdk-ios) pour les utilisateurs finaux

![OpenStopCovid](img/mobile-app/App Protocole D3PT V0-15.png)
