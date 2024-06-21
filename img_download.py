import csv
import requests
import shutil
import os
import sys

def createImage(csv_file):

	img_link = []

	with open(csv_file, 'r') as csvfile:
		lineReader = csv.reader(csvfile)
		for row in lineReader:
			if "http" in row[6]:
				img_link.append({"tweet_id": row[0], "link" : row[6]})

	flnm = sys.argv[1]
	os.system('mkdir '+flnm.split(".")[0])             # create directory to save photos to a folder


	for url in img_link:

		image_url = url["link"]                        # Set up the image url
		filename = url["tweet_id"] + ".jpg"            # Set up the filename

		r = requests.get(image_url, stream=True)

		if r.status_code == 200:                       # Check if the image was retrieved successfully

			r.raw.decode_content = True                # Set decode_content value to True, otherwise the downloaded image file's size will be zero.

			with open(filename, 'wb') as f:
				shutil.copyfileobj(r.raw, f)

			print("Image successfully donwloaded: ", filename)

		else:
			print("Image couldn\'t be downloaded.")

createImage(sys.argv[1])                               # taking filename as arguments from commandline