function parrot() {
    frame_max=9
    frames=""
    colors=""

    for i in $(seq 0 $frame_max); do
        echo "Loading frames/$i.txt"
        frames[$i]="$(cat frames/$i.txt)"
    done

    clear
    frame=-1
    color=-1

    while true; do
        frame=$(( (frame+1) % (frame_max+1) ))
        color=$(( (color+1) % 6))

        tput cup 0 0 
        tput setaf $((1 + color))
        echo "${frames[frame]}"
    done

    tput setaf 7
}

parrot