import re
import csv, json
from string import punctuation
from nltk.tokenize import word_tokenize

trainingData = []

corpusFile = "td_RL2013D02E054.csv"
targetFile = "ptd_RL2013D02E054.csv"

with open(corpusFile, 'r', encoding="utf8") as csvfile:
	lineReader = csv.reader(csvfile)
	for row in lineReader:
		try:
			if row[3] != "ES":
				# trainingData.append({"id":row[0], "text":row[1]})
				trainingData.append({"id":row[0], "text":row[1], "likes":row[4], "retweets":row[5]})       # adding likes and retweets for brand analysis
		except Exception as e:
			print(e)

with open('contracted_text.json', 'r') as f:            # opening file of contracted texts
	con_dict = json.load(f)

with open('stopwords.txt', 'r') as f:                   # opening file of stopwords
	stopwords = [line.rstrip() for line in f.readlines()]

class PrePrcsTwts:
	def __init__(self):
		self.sw = set(stopwords + list(punctuation) + ['atUser','URL'])


	def prcsTwts(self, list_of_tweets):
		processedTweets = []
		for tweet in list_of_tweets:
			tweet["text"] = self._prcsTwts(tweet["text"])
			processedTweets.append(tweet)
		return processedTweets

	def _prcsTwts(self, tweet):
		twtxt = tweet.lower()
		twtxt = self.conPrcstwts(twtxt)
		twtxt = re.sub(r'(www\.[^\s]+)|(https?://[^\s]+)', 'URL', twtxt) # remove URLs
		twtxt = re.sub(r'@[^\s]+', 'atUser', twtxt) # remove usernames
		twtxt = re.sub(r'#([^\s]+)', r'\1', twtxt) # remove the # in #hashtag
		twtxt = re.sub(r'[^a-zA-Z0-9#\s]',r' ', twtxt) # remove all non alphanumeric chars except '#'
		twtxt = word_tokenize(twtxt) # remove repeated characters (helloooooooo into hello)
		# self.cnct_hashtag(twtxt) 
		wordlist = [word for word in twtxt if word not in self.sw]  # creating list of tokenized non-stopwords

		return ' '.join(wordlist)  # to join all words in the list

	def conPrcstwts(self, twtxt):                 # expand contracted words
		twtxt = [twtxt][0].split()
		for word in twtxt:
			if word in con_dict:
				twtxt[twtxt.index(word)] = con_dict[word]
		return ' '.join(twtxt)

	def cnct_hashtag(self, twtxt):                # to concat '#' with their original words
		for word in twtxt:
			if word == '#':
				idx = twtxt.index(word)
				twtxt[idx] = twtxt[idx] + twtxt[idx + 1]
				twtxt.pop(idx + 1)


twtPrcsr = PrePrcsTwts()
prePrcsdTwt = twtPrcsr.prcsTwts(trainingData)

with open(targetFile, 'w') as csvfile:
        linewriter = csv.writer(csvfile, delimiter=',', quotechar='"', quoting=csv.QUOTE_NONNUMERIC)
        linewriter.writerow(["tweet_id", "text", "likes", "retweets"])
        for tweet in prePrcsdTwt:
            try:
                linewriter.writerow([tweet["id"], tweet["text"], tweet["likes"], tweet["retweets"]])
            except Exception as e:
                print(e)

