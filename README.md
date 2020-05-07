# OpenStopCovid
**100% Open Source contact tracing application, powered by contributors and fueled by community.**

## To add a new language
### 1. Copy the folder default to [my-two-letters-language-code]
[Pick the code here](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
```
cp -r default [my-two-letters-language-code]

Example:
cp -r default en
```
### 2. Translate everything in [my-two-letters-language-code]
### 3. Add the[my-two-letters-language-code] to the array `langs` in `_config` 
```
vim _config
# initial array
langs = [fr, en]
# new array
langs = [fr, en, my-two-letters-language-code]
```
### You're done 

## To run this site locally ##
```
git clone https://github.com/OpenStopCovid/openstopcovid.github.io.git
cd openstopcovid.github.io
git checkout fr # optional: select an existing branch (fr, en, or master)
bundle install
bundle exec jekyll serve
# connect your browser to the address: [http://localhost:4000]
```

## To build a local docker
```
git clone https://github.com/OpenStopCovid/openstopcovid.github.io.git
cd openstopcovid.github.io
docker build . --tag openstopcovid
docker run -p 80:4000 openstopcovid
# connect your browser to the address: [http://0.0.0.0:80](http://0.0.0.0)
```

![OpenStopCovid](./logo.png)

# OpenStopCovid

Mobile tracing apps have a potential to support our efforts to limit the spread of COVID-19 and to keep some semblance of normality despite containment/preventive measures:
* people can be quickly informed that they may have been in contact with an infected person
* people can receive instructions on which further actions to take from public health authorities
* epidemiologists could receive anonymous or pseudonymous research information about the spread from volunteering users

## Disclaimer

Contact tracing technology using mobile applications is under active investigation and development for deployment by different countries. However, it has never been tested at a wide scale and its effectiveness is controversial. As stated by our Open Source licence please note that the software is thus provided "as is", without warranty of any kind. Would you want to deploy your own instance please ensure it complies with the applicable laws or required certifications in your country, state or province.

## Why OpenStopcovid ?

Different initiatives have been taken to tackle the underlying technical difficulties of contact tracing:
* the use of Bluetooth LE (Low Energy) for proximity detection of nearby mobile phones;
* privacy-preserving - personal data should be securely encrypted and dismantled as soon as no longer needed.

The most famous being [BlueTrace](https://bluetrace.io/) by the Singaporean Government, or [DP-3T](https://github.com/DP-3T/documents) and [ROBERT](https://github.com/ROBERT-proximity-tracing/documents) from the Pan-European Privacy-Preserving Proximity Tracing (PEPP-PT) project.

Although all procols have been publicly published, only BlueTrace proposes an Open Source [reference implementation](https://github.com/OpenTrace-community). However, it was published before Google and Apple jointly announced a [framework](https://www.apple.com/covid19/contacttracing) to support contact tracing apps. Moreover, it is thightly coupled to a specific Cloud Provider and we believe that a universal solution should be cloud-agnostic as much as possible.

So far no reference implementation has been published for ROBERT. Moreover, the choice of a centralized approach makes it hardly compatible with the contact tracing framework of Google and Apple. Indeed, Bluetooth tracking on mobile devices requires privileged access to the system in order to work efficiently.

As a consequence, we selected the decentralized [DP-3T](https://github.com/DP-3T/documents) approach as the underlying technology to provide our reference implementation. Currently it is based on the Design 1, which is less complex and more pluggable to the contact tracing framework.

We strongly believe that an easy-to-install, cloud-agnostic, 100% Open Source application is mandatory to increase trust and allow large scale deployment at the level of what is at stake. However, we are also convinced that this technology should only be one piece in the puzzle of the investigative work and keeping human-in-the-loop is important. Contact tracing is inherently "invasive", whatever the technical measures in place to protect against deanonymisation, so the key to protect privacy as much as possible is also in the operational processes, the governance and oversight of the authorities conducting it.

## What's inside ?

The global architecture is depicted by the following diagram:

![Architecture](./architecture.png)

The main components of OpenStopCovid are the following:
* [Backend microservices](https://github.com/OpenStopCovid/dp3t-ms)
  * `exposed-keys` microservice to publish exposed keys and get a list of exposed keys
  * `codes` microservice to create and use validation codes to declare sick patients
* [User interface for physicians](https://github.com/OpenStopCovid/health-authority-ui) in order to generate validation codes for sick patients
* [Android application]() relying on [DP-3T SDK](https://github.com/DP-3T/dp3t-sdk-android) for end-users
* [iOS application]() relying on [DP-3T SDK](https://github.com/DP-3T/dp3t-sdk-ios) for end-users
