package main

import (
	"fmt"
	"math/rand"
	"time"
)

const (
	min = 1
	max = 10
)

func init() {
	rand.Seed(time.Now().UnixNano())
}

func main() {
	fmt.Println(rand.Intn(max-min) + min)
}
