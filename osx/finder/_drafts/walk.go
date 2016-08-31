package main

import (
	"fmt"
	"github.com/boltdb/bolt"
	"log"
	"os"
	"path/filepath"
	"strings"
	"time"
)

func visit(path string, f os.FileInfo, err error) error {
	fmt.Printf("Visited: %s\n", path)
	return nil
}

var world = []byte("world")

func main() {

	db, err := bolt.Open("my.db", 0644, nil)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	key := []byte("1")

	fmt.Println("count:", key, filepath.SkipDir)
	fmt.Println("now:", time.Now().Format("01/02"))

	// retrieve the data
	err = db.View(func(tx *bolt.Tx) error {
		var one int
		fmt.Println(one)
		bucket := tx.Bucket(world)
		if bucket == nil {
			return fmt.Errorf("Bucket %q not found!", world)
		}

		val := bucket.Get(key)
		fmt.Println(string(val))

		return nil
	})

	env := os.Getenv("HOME")

	location := []string{env, "Desktop/"}
	strlocation := strings.Join(location, "/")
	depth := 0

	if stat, _ := os.Stat(strlocation); stat.IsDir() {
		foldername := strlocation + time.Now().Format("01-02")
		fmt.Println("fname:", strlocation, foldername)
		// ox
	}

	filepath.Walk(strlocation, func(path string, f os.FileInfo, err error) error {

		// fmt.Println(path)
		info, _ := os.Stat(path)
		if info.IsDir() {
			depth++
			if depth > 1 {
				fmt.Println(info.Name())
				if depth > 2 {
					depth--
					return filepath.SkipDir
				}
			}
		} else {
			// return filepath.SkipDir

		}

		return nil
	})

	matches, _ := filepath.Glob(strlocation + "/[0-9]*-[0-9]*-[0-9]*/*.png")
	// fmt.Printf("%v", matches)
	for _, value := range matches {
		info, _ := os.Stat(value)
		fmt.Println(info.Sys())
	}
}
