# OpenStopCovid
## Solution de contact tracing décentralisée, 100% libre et issue de la société civile

## Pour faire tourner ce site en local
```
git clone https://github.com/OpenStopCovid/openstopcovid.github.io.git
cd openstopcovid.github.io
git checkout fr  # optionnel: sélectionnez une branche existante (fr, en ou master)
bundle install
bundle exec jekyll serve
# connectez votre navigateur à l'adresse: [http://localhost:4000](http://localhost:4000)
```

## Pour construire un docker en local
```
git clone https://github.com/OpenStopCovid/openstopcovid.github.io.git
cd openstopcovid.github.io
docker build . --tag openstopcovid
docker run -p 80:4000 openstopcovid
# connectez votre navigateur à l'adresse: [http://0.0.0.0:80](http://0.0.0.0)
```
