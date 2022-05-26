mkdir ./tmp
cd ./tmp
seq 1000000 | sed 's/^/echo $RANDOM > /' | bash

ls ./tmp | xargs -P$(nproc) -I{} grep "^10$" ./tmp/{} -l | echo # rm

# 別解
grep -l '^10$' -R | xargs -P$(nproc) echo # rm