find -type f | grep -v "\./dir_b/d" | sort

shopt -s globstar

echo dir_a/* dir_b/* dir_c/**