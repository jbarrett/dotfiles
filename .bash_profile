for i in ~/.bash.d/* ; do
    if [ -x "$i" ] ; then
        . "$i"
    fi
done

