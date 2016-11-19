FROM golang:1.7

RUN go get -v -u gopkg.in/alecthomas/gometalinter.v1 && gometalinter.v1 --install

RUN go get -v -u github.com/bradleyfalzon/apicompat/...

CMD ["sleep", "infinity"]
