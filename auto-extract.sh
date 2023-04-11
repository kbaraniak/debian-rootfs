file=$(basename debian-amd64*.tar.xz)
dirname=${file%.tar.xz}
mkdir "$dirname"
tar -xvf "$file" -C "$dirname/"
