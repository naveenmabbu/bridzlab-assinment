items=`ls`
for item in $items
do
    fileName=`echo $item | awk -F. '{ print $1 }'`
    extensionName=`echo $item | awk -F. '{ print $2 }'`
    if [ -d $fileName ]
    then
        echo "**** I am From If-Condition ****"
        rm -rf $fileName
    fi
    mkdir -p $fileName/$extensionName
    mv $item $fileName/$extensionName
done