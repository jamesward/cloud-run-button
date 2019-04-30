FROM alpine

EXPOSE 8080
ENTRYPOINT ["sh", "-c", "while true ; do nc -l -p 8080 -e sh -c 'echo -e \"HTTP/1.1 200 OK\n\n hello, world\"'; done"]
