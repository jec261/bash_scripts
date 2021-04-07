#!/bin/bash

echo "Enter a file name"
read file
locate $file | grep -q "."

while [ $? == 0 ]; do
        echo "File name taken, enter another file name"
        read file
        locate $file | grep -q "."

done
echo "#!/bin/bash" >> $file
read -p "bash file $file created, Press enter to continue"
eval chmod "+x" $file
eval nano $file

