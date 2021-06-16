FROM dtzar/helm-kubectl:3.2.0

RUN apk update \
    apk add --no-cache aws-cli
    
WORKDIR /app

COPY run.sh .

ENTRYPOINT [ "/app/run.sh" ]
