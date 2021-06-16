FROM dtzar/helm-kubectl:3.2.0

RUN apt-get install awscli

WORKDIR /app

COPY run.sh .

ENTRYPOINT [ "/app/run.sh" ]
