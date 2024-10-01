#!/usr/bin/env python3

# importing boto3
import boto3
s3 = boto3.client('s3', region_name="us-east-1")

# this is gonna be meryl
import requests
jpg_url = 'https://cdn.myanimelist.net/images/characters/2/73335.jpg'
meryl = requests.get(jpg_url)

if meryl.status_code == 200:
    local_file = 'meryl.jpg'
    with open(local_file, 'wb') as file:
        file.write(meryl.content)

# uploading image into bucket
bucket = 'ds2022-zvd6vz'

with open(local_file, 'rb') as file:
    resp = s3.put_object(
	ACL='public-read', 
	Body=file,
        Bucket=bucket,
        Key=local_file,
	ContentType='image/jpg'
)

# presigned url 
url = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket, 'Key':local_file},
    ExpiresIn=604800
)
print(url) 

# output: https://ds2022-zvd6vz.s3.amazonaws.com/meryl.jpg?AWSAccessKeyId=AKIAVFIWIOGQJ2E2S4UU&Signature=sU%2BOVnAnJyGMF9vEJ%2FpX77VNfqI%3D&Expires=1728356559
