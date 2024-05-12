docker build -t jenkins .
docker run -d -p 8080:8080 -p 50000:50000 jenkins
