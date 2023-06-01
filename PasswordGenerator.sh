#!/bin/bash

# A simple password generator

echo "This is a simple password generator"
read -p "Enter the length of the password: " PASS_LENGTH

for p in $(seq 1);
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done
