cat ../qdata/7/kakeibo.txt | awk '{tax=($1<20191001||$2~"^*")?1.08 : 1.1;print $0, tax}' | awk 'BEGIN{a=0}{a+=int($3*$4)};END{print a}'

# sudo apt install num-utils
cat ../qdata/7/kakeibo.txt | awk '{tax=($1<20191001||$2~"^*")?1.08 : 1.1;print $0, tax}' | awk '{print int($3*$4)}' | numsum
