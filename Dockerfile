FROM dtzar/helm-kubectl:3.2.0

RUN apk update \
    && apk --no-cache add curl \
    && apk --no-cache add unzip \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install  

WORKDIR /app

COPY run.sh .

ENTRYPOINT [ "/app/run.sh" ]
