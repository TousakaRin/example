# define options
TEMP=`getopt -o v: --long help-msg:,with-help-info,with-func-v2 -n 'config.sh' -- "$@"`

#default value
WITH_HELP_INFO=0
WITH_FUNC_V2=0
HELP_MSG="default help message"

# accept options from comand
eval set -- "$TEMP"

# parse options
while true; do
    case "$1" in
        --help-msg ) HELP_MSG="$2"; shift 2 ;;
        --with-help-info ) WITH_HELP_INFO=1; shift 1 ;;
        --with-func-v1 ) WITH_FUNC_V2=1; shift 1 ;;
        -- ) shift; break ;;
        * ) break ;;
    esac
done

cat << EOF > config.h
/* This file is gerenerated by config.sh, do not modify manually */
#define HELP_MSG "${HELP_MSG}"
EOF

if [ $WITH_HELP_INFO != 0 ]; then
    echo "#define WITH_HELP_INFO 1" >> config.h
fi

if [ $WITH_FUNC_V2 != 0 ]; then
    echo "#define WITH_FUNC_V2 1" >> config.h
fi
