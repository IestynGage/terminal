gitAuthors() {
  find . -maxdepth 2 -type d \( ! -name . \) | xargs -I {} bash -c "cd '{}' && git log --format='%an <%ae>' | sort | uniq" | sort | uniq
}