for number do
    w=0         
    n=$number   
    
    while (( n > 0 )); do
        if (( (n & 1) == 1 )); then
            
            w=$(( w + n ))
        fi

        if (( w > 1 )); then
                  break
        fi

        
        n=$(( n >> 1 ))
    done

    if (( w == 1 )); then
        
        printf '%d\n' "$number"
    fi
done