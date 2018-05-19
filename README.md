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
nc server npm start # Node Server
```

# Tab 3
```
source ./add_aliases.sh
ac client npm i # Install required modules once
ac client npm start # Angular serve
```


Unfortunately, mongodb could not be dockerized

# Benchmark

```
λ ./ab.exe -c 10 -n 10000 http://localhost:3000/messages
This is ApacheBench, Version 2.3 <$Revision: 1748469 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 1000 requests
Completed 2000 requests
Completed 3000 requests
Completed 4000 requests
Completed 5000 requests
Completed 6000 requests
Completed 7000 requests
Completed 8000 requests
Completed 9000 requests
Completed 10000 requests
Finished 10000 requests


Server Software:
Server Hostname:        localhost
Server Port:            3000

Document Path:          /messages
Document Length:        2 bytes

Concurrency Level:      10
Time taken for tests:   3.747 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      2390000 bytes
HTML transferred:       20000 bytes
Requests per second:    2669.09 [#/sec] (mean)
Time per request:       3.747 [ms] (mean)
Time per request:       0.375 [ms] (mean, across all concurrent requests)
Transfer rate:          622.96 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.2      0       1
Processing:     1    4   3.4      3      58
Waiting:        1    4   3.4      3      58
Total:          1    4   3.4      3      58

Percentage of the requests served within a certain time (ms)
  50%      3
  66%      4
  75%      4
  80%      4
  90%      5
  95%      7
  98%     11
  99%     13
 100%     58 (longest request)

```


```
λ ./ab.exe -c 10 -n 10000 http://localhost:3000/
This is ApacheBench, Version 2.3 <$Revision: 1748469 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 1000 requests
Completed 2000 requests
Completed 3000 requests
Completed 4000 requests
Completed 5000 requests
Completed 6000 requests
Completed 7000 requests
Completed 8000 requests
Completed 9000 requests
Completed 10000 requests
Finished 10000 requests


Server Software:
Server Hostname:        localhost
Server Port:            3000

Document Path:          /
Document Length:        63 bytes

Concurrency Level:      10
Time taken for tests:   1.849 seconds
Complete requests:      10000
Failed requests:        0
Non-2xx responses:      10000
Total transferred:      3090000 bytes
HTML transferred:       630000 bytes
Requests per second:    5407.76 [#/sec] (mean)
Time per request:       1.849 [ms] (mean)
Time per request:       0.185 [ms] (mean, across all concurrent requests)
Transfer rate:          1631.83 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.2      0       1
Processing:     0    2   1.4      2      40
Waiting:        0    2   1.4      2      40
Total:          0    2   1.4      2      40

Percentage of the requests served within a certain time (ms)
  50%      2
  66%      2
  75%      2
  80%      2
  90%      3
  95%      3
  98%      3
  99%      4
 100%     40 (longest request)
```
