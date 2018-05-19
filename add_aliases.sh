export MSYS_NO_PATHCONV=1

getIpAddress() {
    ipconfig | findstr /R /C:"IPv4 Address" | cut -d : -f 2 | head -n 1 | xargs
}

ac() {
    docker run -it --rm -w /app -v $(pwd)/"$1":/app -p 4200:4200 angularcli "${@:2}"
}

nc() {
    docker run -it --add-host mongodbhost:$(getIpAddress) --rm -w /app -v $(pwd)/"$1":/app -p 3000:3000 angularcli "${@:2}"
}