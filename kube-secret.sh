#
# Prints the content of a kubectl secret in a legible way.
#
# ```sh
# $ kube-secret service
# {
#   "username": "bob",
#   "password": "secret"
# }
# ```

kubectl get secret $1 \
  -o go-template='{{range $k,$v := .data}}{{printf "%s: " $k}}{{if not $v}}{{$v}}{{else}}{{$v | base64decode}}{{end}}{{"\n"}}{{end}}' \
 | cut -c 7- \
 | jq
