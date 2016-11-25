# Project: Words 4 Music

### [Project Description](doc/Project4_desc.md)

![image](http://cdn.newsapi.com.au/image/v1/f7131c018870330120dbe4b73bb7695c?width=650)

Term: Fall 2016

+ [Data link](https://courseworks2.columbia.edu/courses/11849/files/folder/Project_Files?preview=763391)-(**courseworks login required**)
+ [Data description](doc/readme.html)
+ Contributor's name: Jiayu Wang
+ Projec title: Music Features and Lyrics
+ Project summary: For this project, we use music features to recommend lyrics for a music from the most possible one to the least possible one. I extracted 56 columns of features for each music, used topic modelling to divdide the lyrics into 20 topics and label each music with a topic. Then I used random forest to train a model for predicting topic of a music by its features. 
	

-Feature Selection
For each piece of music, we have a list of 15 features and the most important thing for us to make the most accurate prediction for lyrics should be how to select the most signigicant music features. 
Screen Shot 2016-11-25 at 1.10.44 PM


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
