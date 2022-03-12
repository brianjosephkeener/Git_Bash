function strLength () {
    output=$(echo -n "$1" | wc -c)
    echo $output

}
printf "Test out the string script function library!\nFirst off string length function.\nEnter a word to get the length of characters.\n"
read input

strLength $input

function sentenceToArr () {
    str=$1
    IFS=' '
    read -ra array <<< "$str"
    # -- To access an individual element: --
    # echo "${array[0]}"

    echo "${array[0]}"
    
    # -- To iterate over the elements: --
    # for element in "${array[@]}"
    # do
    #   echo "$element"
    # done

    # -- To get both the index and the value: --
    # for index in "${!array[@]}"
    # do
    #   echo "$index ${array[index]}"
    # done

}
printf "Enter a sentence to set entered text into an array.\n"
read input

sentenceToArr $input

