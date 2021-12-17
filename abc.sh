zzzzzzzzzzzzzzzzzitems=`ls`
  function message() {
    echo $1 is a $2 file
} 

for item in $items
do
   
    extName=`echo $item | awk -F. '{ print $2 }'`
    case $extName in
         js)
           message $item $extName   
         ;;
         java)
            message $item $extName
         ;;
         py)
            message $item $extName
         ;;
         cs)
            message $item $extName
         ;;

	 sh)
	   message $item $extName
	 ;;

         *)
              echo "Wrong :("
         ;;
     esac
   
done














