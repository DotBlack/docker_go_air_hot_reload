package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "hello world\n")
}

func main() {
	// print "hello world" when accessing the root "/"
	http.HandleFunc("/", handler)
	// run and server http-server at port 3000
	http.ListenAndServe(":3000", nil)
}
