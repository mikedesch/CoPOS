# g_name": "v1.7.0",

echo curl output piped into grep '"tag_name"'
echo

VERSION_grep=`curl "https://api.github.com/repos/cli/cli/releases/latest" | grep '"tag_name"'`
echo $VERSION_grep
echo

echo grep output piped into sed -E 's/.*"([^"]+)".*/\1/'
VERSION_grep_sed=$VERSION_grep | sed -E 's/.*"([^"]+)".*/\1/'
echo $VERSION_grep_sed
echo

echo sed output piped into cut -c2-
VERSION_grep_sed_cut=$VERSION | cut -c2-
echo $VERSION_grep_sed_cut
echo
