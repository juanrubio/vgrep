FROM opensuse:42.3

RUN zypper --non-interactive ref
RUN zypper --non-interactive in --no-recommends make git go

ARG PROJECT=XXX
WORKDIR /go/src/$PROJECT

ENV GOPATH /go

CMD make build
