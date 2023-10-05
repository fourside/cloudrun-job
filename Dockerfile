FROM denoland/deno:alpine-1.37.1

WORKDIR /work

COPY . .

RUN apk add --no-cache \
        tzdata \
    && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

CMD ["deno", "task", "run"]
