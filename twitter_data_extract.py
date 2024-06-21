import tweepy

# Twitter Developer keys here
# It is CENSORED
consumer_key = ''
consumer_key_secret = ''
access_token = ''
access_token_secret = ''

auth = tweepy.OAuthHandler(consumer_key, consumer_key_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth)

# This method creates the training set
def createTrainingSet(corpusFile, targetResultFile):
    import csv
    import time

    counter = 0
    corpus = []

    with open(corpusFile, 'r') as csvfile:
        lineReader = csv.reader(csvfile)
        for row in lineReader:
            corpus.append({"tweet_id": row[0], "author": row[1], "language":row[2]})

    sleepTime = 2
    trainingDataSet = []
    # errorDataSet = []

    i = 1

    for tweet in corpus:
        try:
            tweetFetched = api.get_status(tweet["tweet_id"])
            tweet["likes"] = tweetFetched.favorite_count
            tweet["retweets"] = tweetFetched.retweet_count
            tweet["timestamp"] = tweetFetched.created_at
            tweet["tweet_id"] = tweetFetched.id_str
            tweet["text"] = tweetFetched.text
            try:
                tweet["media"] = tweetFetched.entities["media"][0]["media_url_https"]
            except:
                tweet["media"] = "no url"
            print("{}. Information for :- " + tweetFetched.id_str).format(i)
            i = i + 1
            trainingDataSet.append(tweet)
            time.sleep(sleepTime)

        except Exception as e:
            print(e)
            # errorDataSet.append(tweet)
            continue

    # with open(errorDataFile, 'w') as csvfile:
    #     linewriter = csv.writer(csvfile, delimiter=',', quotechar="\"")
    #     for tweet in errorDataSet:
    #         linewriter.writerow([tweet["tweet_id"], tweet["author"], tweet["language"]])

    with open(targetResultFile, 'w') as csvfile:
        linewriter = csv.writer(csvfile, delimiter=',', quotechar='"', quoting=csv.QUOTE_NONNUMERIC)
        linewriter.writerow(["tweet_id", 'text', "author", "language", "likes", "retweets", "media", "timestamp"])
        for tweet in trainingDataSet:
            try:
                linewriter.writerow([tweet["tweet_id"], tweet["text"].encode('utf-8').replace("\n", " ").replace("   ", " "), tweet["author"], tweet["language"], tweet["likes"], tweet["retweets"], tweet["media"], tweet["timestamp"]])
            except Exception as e:
                print(e)
    return trainingDataSet

# Code starts here
# This is corpus dataset
corpusFile = "tweet_ids/test_id/RL2013D01E044.csv"
# This is my target file
targetResultFile = "tweet_data/test_tweet_data/td_RL2013D01E044.csv"
# This is my error data file
# errorDataFile = "error_data/er_RL2013D04E207.csv"
# Call the method
resultFile = createTrainingSet(corpusFile, targetResultFile)
