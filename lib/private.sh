#
# PRIVATE FUNCTION CHAINLOADING
#
# 'private' is a directory that is excluded from git. If you wish to use
# private libraries, just create the directory, or symlink to a location
# where you are tracking your senstive files.
#
if [[ -d ${ENV_LIB}/private ]] || [[ -L "${ENV_LIB}/private" ]] ; then
    for private_file in $(find "${ENV_LIB}/private/" ${ENV_FIND_OPTS} -name '*.sh'); do
        source ${private_file}
    done
fi

