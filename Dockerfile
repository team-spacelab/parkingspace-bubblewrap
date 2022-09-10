FROM public.ecr.aws/docker/library/alpine:latest

COPY . /app/

WORKDIR /app

CMD ["sleep", "99999999999"]
