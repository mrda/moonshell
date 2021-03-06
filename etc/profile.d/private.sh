#
# PRIVATE VARIABLE CHAINLOADING
#
# 'private' is a directory that is excluded from git. If you wish to use
# private libraries, just create the directory, or symlink to a location
# where you are tracking your senstive files.
#
if [[ -d "${MOON_PROFILE}/private" ]] || [[ -L "${MOON_PROFILE}/private" ]]; then
    for private_file in $(find "${MOON_PROFILE}/private/" ${MOON_FIND_OPTS} -name '*.sh'); do
        source ${private_file}
    done
fi

