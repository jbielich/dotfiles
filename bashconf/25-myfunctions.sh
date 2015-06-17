# Make dir and cd into it
mcd(){
    if [ -z "$1" ]
    then
        echo "You must pass the directory name in as an argument. Example: mcd foo"
    else
        mkdir $1
        cd $1
    fi
}

# Make executable file and edit it
mkexe() {
    if [ -z "$1" ]
    then
        echo "I need a file name, idiot!!!"
    else
        echo "#!/bin/bash" > "$1"
        chmod +x "$1"
        mvim "$1"
    fi
}


# Marked App on passed in markdown file
function marked(){
    if [ $1 ]
    then
        open -a marked.app $1
    else 
        open -a marked.app 
    fi 
}
