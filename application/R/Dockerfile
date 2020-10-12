FROM adelmofilho/r-base:4.0.2

RUN apt-get update

RUN apt-get install -y libsodium-dev

WORKDIR /app

COPY renv.lock renv.lock

RUN R -e "renv::restore()"

COPY model.RDS /opt/ml/model/model.RDS
COPY plumber.R /opt/ml/plumber.R

COPY serve /usr/local/bin/serve
RUN chmod +x /usr/local/bin/serve

EXPOSE 8080