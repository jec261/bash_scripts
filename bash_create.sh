echo "Please name your file:"
read file_name
file=$file_name
echo "#!/bin/bash" >> $file
read -p "bash file $file created, Press enter to continue"
eval chmod "+x" $file
eval nano $file
