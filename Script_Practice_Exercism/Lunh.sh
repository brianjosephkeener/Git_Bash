# Returns checksum
Luhn() {
        sequence="$1"
        sequence="${sequence//[^0-9]}" # regex for only numbers
        checksum=0
        table=(0 2 4 6 8 1 3 5 7 9)


        i=${#sequence} #length of input
        if [ $(($i % 2)) -ne 0 ]; then
                sequence="0$sequence"
                ((++i))
        fi

        while [ $i -ne 0 ];
        do
               
                checksum="$(($checksum + ${sequence:$((i - 1)):1}))"
                checksum="$(($checksum + ${table[${sequence:$((i - 2)):1}]}))" 
                i=$((i - 2))

        done
        checksum="$(($checksum % 10))" 
        echo "$checksum"
}