```cd ac && docker build . -t angularcli:latest && cd ..```

# Tab 1
```
source ./add_aliases.sh
/c/Program\ Files/MongoDB/Server/3.4/bin/mongod --dbpath $(cygpath -w $(pwd)/db)
```

# Tab 2
```
source ./add_aliases.sh
nc server npm i # Install required modules once
nc server npm start # Node Server```

# Tab 3
```
source ./add_aliases.sh
ac client npm i # Install required modules once
ac client npm start # Angular serve
```


Unfortunately, mongodb could not be dockerized