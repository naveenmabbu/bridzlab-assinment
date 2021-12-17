

for userid in  awk -F ':' '$3>=1000 {print "Valid User :"$1","$3}' 
do

  if (("$userid" >= 1000)); 
  echo "Valid User" : cat /etc/passwd | grep ":$userid:" | awk -F: "{print $1,$3}"
  

done