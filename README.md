cd ac && docker build ac.Dockerfile -t angularcli:latest && cd ..

# Tab 1
source ./add_aliases.sh
/c/Program\ Files/MongoDB/Server/3.4/bin/mongod --dbpath $(cygpath -w $(pwd)/db)

# Tab 2
source ./add_aliases.sh
nc server npm -v # Node Server

# Tab 3
source ./add_aliases.sh
ac client ng -v # Angular CLI


Unfortunately, mongodb could not be dockerized