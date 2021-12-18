DAYOFWEEK=$(date +"%a")
echo DAYOFWEEK: $DAYOFWEEK
if ["$DAYOFWEEK" == "Thu"]; 
then   
   echo YES
else
    echo NO
fi