FROM golang:1.7

# Install vendoring tools
RUN curl https://glide.sh/get | sh
RUN go get -u github.com/golang/dep
RUN go get -u github.com/kardianos/govendor
RUN go get -u github.com/tools/godep

# Install static analysis tools
RUN go get -u github.com/golang/lint/golint
RUN go get -u github.com/bradleyfalzon/apicompat/...
RUN go get -u honnef.co/go/tools/cmd/gosimple
RUN go get -u honnef.co/go/tools/cmd/staticcheck
RUN go get -u honnef.co/go/tools/cmd/unused

# Script to detect vendor tool and install deps
COPY install-deps.sh /usr/local/bin/

CMD ["sleep", "infinity"]
