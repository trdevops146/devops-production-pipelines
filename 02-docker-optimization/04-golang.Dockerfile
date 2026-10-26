# --- Stage 1: Build Stage (Golang SDK with compiler) ---
FROM golang:1.19 AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /docker-gs-ping

# --- Stage 2: Runtime Stage (Google Distroless Minimal Image) ---
FROM gcr.io/distroless/static-debian12
WORKDIR /app
COPY --from=builder /docker-gs-ping /docker-gs-ping
EXPOSE 8080
CMD ["/docker-gs-ping"]