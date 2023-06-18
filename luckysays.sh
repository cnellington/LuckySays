#!/bin/bash

# an array of files with quotes separated by newlines
# sourcefiles=("advice.txt" "chengyu10k.txt")
sourcefiles=("advice.txt")

# parse files into a single array of quotes
quotes=()
for file in "${sourcefiles[@]}"
do
  while IFS= read -r line; do
    quotes+=("$line")
  done < $file
done

# get a random index
index=$((RANDOM % ${#quotes[@]}))

# get the quote at the random index
quote="${quotes[$index]}"

# print the ASCII art with the quote
cat << EOF
                              __
                     /\\    .-" /
                    /  ; .'  .' 
                   :   :/  .'   Lucky Says
                    \\  ;-.'      
       .--""""--..__/     \`.       ${quote}
     .'           .'    \`o  \\  
    /                    \`   ;  |/ 
   :                  \\      :  
 .-;        -.         \`.__.-'  
:  ;          \\     ,   ;       
'._:           ;   :   (        
    \\/  .__    ;    \\   \`-.     
     ;     "-,/_..--"\`-..__)    
     '""--.._:
EOF

