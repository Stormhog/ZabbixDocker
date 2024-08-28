#!/bin/bash
directory=$1
file_count=$(ls -1q "$directory" | wc -l)
echo $file_count