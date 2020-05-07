---
layout: page
title: OpenStopCovid
subtitle: Decentralized contact tracing solution<br>100% free and from civil society
ressources: Resources
presskit: Press kit
appmobile: Mobile application
uidoctor: Medical application
uidoctordev: Medical application (code)
appserv: Application server
specs: Specifications
doc: Documentation
lang: en
---

## What is contact tracing ##

Digital contact tracing consists, for a user, of installing a specific smartphone application that, using Bluetooth technology, locates other devices in the vicinity. In practice, the phone stores pseudonyms in memory that other devices broadcast around them. Most often encrypted, these pseudonyms can only be understood by smartphones equipped with the same application.

This technology has the potential ([but not certainty](https://github.com/DP-3T/documents/issues/224)) to limit the spread of Covid-19 disease in the population. Thus, a dedicated mobile application, developed according to the rules of the art, could allow us to return to a semblance of normal life, without undermining the results of the containment that is coming to an end. Let's mention three advantages to be expected from a tracking application:
* A person can be quickly notified when they've been standing too long in close proximity to an infected person.
* A person can be automatically instructed by public health authorities on what action to take.
* A person may, on a voluntary basis, share with epidemiologists anonymous research information related to the spread of the disease in the territory.

However, digital tracing alone cannot be a solution to the pandemic. It can only be part of a broader system.

## Why a decentralized solution

When a user is diagnosed positive, it is possible to calculate the risk incurred by all persons recently crossed by this user. In order to carry out this operation, it is necessary to collect the victim's state of health, the date corresponding to the appearance of symptoms and all the pseudonyms that his smartphone has issued in the previous days to identify himself to other users. At the same time, it is also necessary to collect the pseudonyms that the smartphone has received from other users during the incubation phase of the disease. By combining these data, a tracking application can determine each person's level of risk of exposure.

The problem here is less how to perform this calculation than where it takes place and what data is transmitted. Based on the DP-3T protocol, developed by EPFL and its partners, OpenStopCovid has chosen to adopt a decentralized response to this problem. This means that the calculation takes place in the user's smartphone and that contacts do not leave it. Conversely, a centralized solution necessarily consists of sending pseudonymized contacts to a remote server, a prerequisite for processing that is unacceptable to us.

We believe that it is too risky to gather such data in a central server, however secure it may be. In view of developments in information technology, such anonymous data today may not be anonymous tomorrow. Furthermore, there is the risk of centralising, recording and cross-referencing this information with other information such as, for example, the system logs of telecom operators. The decentralized approach also involves risks, but these remain localized, and therefore minimized, at the level of an individual. These risks are comparable to those induced by the installation of bugs or spy cameras.

## Why a 100% free solution

Contact tracing technologies are interesting from an epidemiological point of view. But at the same time, they pose a risk to individual liberties. This risk can arise in a straightforward way, by bringing about generalised surveillance of the entire population. Or in an insidious way, in the medium and long term, by encouraging people to make do with regular tracking of their actions. To reduce these risks, it is necessary to maintain citizen control over the "source code" (manufacturing plan) of applications.

One strategy to ensure this control is to publish the source code of the application on specialized platforms. This source code, known as "Open Source", will then be accessible to anyone who wants to read and test it, with the aim of verifying that no threats, vulnerabilities or fraudulent behaviour alter the integrity of the data circulating inside.

The other advantage of open source code is that it makes the application ready for contributions from developers outside the project, not just from a small team. Already today, these developers are helping OpenStopCovid to improve the security, performance but also the usability and ergonomics of the application and the components it depends on. These contributors constitute, in a way, an unlimited and international development team.

Conversely, closed source code is free of any cumbersome external control and therefore, by extension, poses legitimacy and security problems for society as a whole.

## Available components

The main components of the project are as follows:

* An Android application
* An iPhone application
* An interface for health professionals (trusted third party)
* Some server-side bricks to secure the device

The architecture we have chosen is directly based on the DP-3T protocol, and uses several reference components. Our implementation is represented by the following diagram:

![Architecture]({{site.url}}/img/architecture.png)

## How to contribute

You can follow our work on GitHub : [https://github.com/OpenStopCovid]

## Contact us

contact@openstopcovid.fr
