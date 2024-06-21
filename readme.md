# A Comparative Analysis of Online Reputation Monitoring

**This readme file contains information about all the files and folders**

## Files for dataset

The Replab 2013 dataset contains only the tweet IDs for different entities/brands in their own folders. The `tweet_ids` folder contains tweets IDs, usernames, and language extracted from the Replab dataset files. The `tweet_data` folder contains contains the tweets actual text, media link(if any), number of retweets & likes, and timestamp. There is also an `trainig_Image_Files` folder containing the images extracted from the media links in the tweets. 

## Files for the pre-processing part

Contains files used during the pre-processing like `stopwords.txt`, `contracted.json`, and `PreProcessor.py` its python file for pre-processing.

## Files corresponding to their topic in the report

- **data_visualisation.ipynb** - Contains Information on `Exploratory Data Analysis` part
- **brand_similarity.ipynb**   - Contains Information on `Brand Similarity` part
- **brand_popularity.ipynb**   - Contains Information on `Brand Popularity` part

All the above files are there in `Ipynb files` folder which also contain **.csv** files which were used in them.
It also contains the **lda.model** file which was trained for Topic Modelling using Gensim LDA.

## Other important files

- **extract_id.sh**    - Bash script to extract tweets IDs from the replab dataset
- **data_extract.py**  - Python script to scrap data on tweets using tweet IDs
- **img_download.py**  - Python script to download images from the media links
- **save_image.sh**    - Bash script to save images in their respective folders of entities using the above python script
- **requirements.txt** - Contains information about all the python modules used in the above python scripts and `.ipynb` files
