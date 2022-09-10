FROM public.ecr.aws/docker/library/node:18-alpine

COPY * /app/

WORKDIR /app

RUN apk add openjdk11

CMD ["sleep", "99999999999"]
