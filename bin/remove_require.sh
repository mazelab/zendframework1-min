BIN_DIR=$(dirname "$(readlink -e "$0")")
cd "$(dirname $BIN_DIR)/library"
find . -name '*.php' \
-not -path "*/Loader/*" \
-not -wholename '*/Application.php' -print0 | \
xargs -0 sed --regexp-extended --in-place 's/(require_once)/\/\/ \1/g'
