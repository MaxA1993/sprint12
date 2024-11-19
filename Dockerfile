FROM golang:1.23.2

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o /my_app

COPY tracker.db /app/tracker.db

CMD ["/my_app"]
