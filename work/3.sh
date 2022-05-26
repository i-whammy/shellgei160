# mkdir ./tmp
# cd ./tmp
# seq 1000000 | xargs -P$(nproc) touch

cd ./tmp
ls -U . | xargs -P2 rename 's/^/0000000/;s/0*([0-9]{7})/$1/'

## セルフ別解
seq -w 1000000 | sed -E 's/(0*(.*))/mv \2 \1/' | sh -c