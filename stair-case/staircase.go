package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, _ := strconv.Atoi(os.Args[1])

	for i := 1; i <= n; i++ {

		for j := i; j <= n; j++ {
			fmt.Print(" ")
		}

		for j := 1; j <= i; j++ {
			fmt.Print("#")
		}

		fmt.Print("\n")

	}
}
