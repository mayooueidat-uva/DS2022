#!/bin/bash

echo "Enter a valid URL of a .jpg image from the Internet."

read var1

curl $var1 > newimage.jpg

aws s3 cp newimage.jpg s3://ds2022-zvd6vz/

aws s3 presign --expires-in 604800 s3://ds2022-zvd6vz/newimage.jpg

echo "Your image has been uploaded. View it at the long URL you have seen returned by this script."

# URL created by the first output of this function: 
# https://ds2022-zvd6vz.s3.us-east-1.amazonaws.com/newimage.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVFIWIOGQJ2E2S4UU%2F20240930%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240930T233652Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=87aa6b6d10dedd4a48daae9f752855c5cc2832c0c432893c54f7b0e7e0550932
