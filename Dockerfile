FROM golang:1.24-alpine

WORKDIR /app

# Copy all source files 
COPY . .

# Build the binary
RUN go build -o myapp .

# Expose port (adjust if different)
EXPOSE 8888

# Run the binary
CMD ["./myapp"]
