echo "(a)dd:"
echo "(d)elete"
read poop
 if [ $poop = "foo" ]; then
               echo expression evaluated as true
            fi
echo Enter User Name: 
read name
if [ $poop = "a" ]; then
    echo $poop
    sudo adduser $name --gecos "" --disabled-password
    echo "$name:stars1" | sudo chpasswd
    sudo usermod -aG sudo $name
else [[ $which = "d" ]]
 sudo userdel -rfRZ $name 
fi