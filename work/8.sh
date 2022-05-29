cat ../qdata/8/access.log | sed -E 's/://g;s/^.*([0-9]{6}).*$/\1/' | awk 'BEGIN{am=0;pm=0}$1<120000{am+=1}$1>=120000{pm+=1}END{printf "AM: "am ", PM: " pm}'
