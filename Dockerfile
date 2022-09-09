FROM public.ecr.aws/docker/library/node:18-alpine

COPY * /app/

WORKDIR /app

CMD ["sleep", "99999999999"]
