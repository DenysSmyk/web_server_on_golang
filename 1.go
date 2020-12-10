package main

import (
    "io"
    "log"
    "net/http"
)

func main() {
	h1 := func(w http.ResponseWriter, _ *http.Request) {
	    io.WriteString(w, "Hello #1!\n")
	}
	http.HandleFunc("/", h1)

	log.Fatal(http.ListenAndServe("127.0.0.1:8093", nil))
}

