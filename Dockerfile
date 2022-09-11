FROM public.ecr.aws/lts/ubuntu:jammy

COPY . /app/

WORKDIR /app

RUN chmod +x ./*.sh

RUN ./install_nodejs.sh

RUN ./install_androidsdk.sh

RUN ./create_keys.sh

RUN npm i -g @bubblewrap/cli

CMD ["sleep", "99999999999"]
