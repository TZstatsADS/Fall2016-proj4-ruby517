# Project: Words 4 Music

### [Project Description](doc/Project4_desc.md)

![image](http://cdn.newsapi.com.au/image/v1/f7131c018870330120dbe4b73bb7695c?width=650)

Term: Fall 2016

+ [Data link](https://courseworks2.columbia.edu/courses/11849/files/folder/Project_Files?preview=763391)-(**courseworks login required**)
+ [Data description](doc/readme.html)
+ Contributor's name: Jiayu Wang
+ Projec title: Music Features and Lyrics
+ Project summary: For this project, we use music features to recommend lyrics for a music from the most possible one to the least possible one. I extracted 56 columns of features for each music, used topic modelling to divdide the lyrics into 20 topics and label each music with a topic. Then I used random forest to train a model for predicting topic of a music by its features. 
	
https://github.com/TZstatsADS/Fall2016-proj4-ruby517/blob/master/figs/Screen%20Shot%202016-11-25%20at%201.10.44%20PM.png
-Feature Selection
Fall2016-proj4-ruby517/figs/Screen Shot 2016-11-25 at 1.10.44 PM.png
For each piece of music, we have a list of 15 features and the most important thing for us to make the most accurate prediction for lyrics should be how to select the most signigicant music features. Since for all the features they are either matrix or vectors with large and different dimensions, we cannot use all of them, which will result in large and unequal dimensions. Thus, we can only select part of them as our predictors for lyrics. However, since we do not want to lose too much important information for each feature, I used mean,standard deviation, median, minimum, maximum, 25% quantile, 75% quantile for each feature of a song and get a 56 dimension features for each song. 




Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
