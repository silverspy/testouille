#!/bin/bash

		        getName(){

		            file="$(find ../ -name "*.mydsl")"

		            name=$(echo $file | tr "./" " ")

		            for word in $name

		                do

		                    echo "Nouveau DSL : $word" 

		                    break

		                done

		        }

		        msg=$(getName)

		        git init

		        git add .

		        git commit -m "$msg"

		        git remote add origin https://github.com/dslteametl/testouille

		        

		        git push -f --set-upstream origin master