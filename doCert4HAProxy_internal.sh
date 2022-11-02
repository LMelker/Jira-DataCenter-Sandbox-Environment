openssl req -nodes -x509 -newkey rsa:2048 -keyout test.key -out test.crt -days 3000 -subj "/C=XX/ST=Maybe/L=Somewhere/O=Internal/OU=EDU/CN=internal"
cat test.key test.crt > test.pem
