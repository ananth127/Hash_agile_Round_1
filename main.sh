formuls() { 
    num=$1 
    fact=1 
    for (( i=1; i<=num; i++ )) 
    do 
        fact=$(( fact * i )) 
    done 
    echo $fact 
} 
combina on() { 
    n=$1 
    k=$2 
    num=$(formuls $n) 
    den1=$(formuls $k) 
    den2=$(formuls $((n - k))) 
    echo $(( num / (den1 * den2) )) 
} 
pascalstriangle() { 
    rows=$1 
    for (( i=0; i<rows; i++ )) 
    do 
    for ((j=i;j<rows-1; j++)) 
    do 
        prin " " 
    done 
        for (( j=0; j<=i; j++ )) 
        do 
            prin "%d " "$(combina on $i $j)" 
        done 
        echo 
    done 
} 
read -p "" n 
pascalstriangle $n 