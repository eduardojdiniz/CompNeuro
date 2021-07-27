# Project Booklet

**Questions** &lrarr; **Answers**: Refine **Hypotheses**

* Need a testable hypothesis to write a tentative abstract.
* Get evidence for/against hypothesis

Translate the project into a 4-step format with a few sentences for each.

* Literature review to situate your question in context and help acquire keywords.
    * Select 2-3 promising abstracts.
    * Pool them with the abstract found by theteam and assign one paper per person to read/skim.
    * Make notes in a common doc shared with the team, writing down important keywords and concepts for the proposal.
    * Give a detailed report to the group without reading whole sections from the paper and ask questions about the papers they are presenting.

* Short, unstructured proposal about what the project will be about (200-300 words).

* Get familiar with the data/model and making exploratory plots (Jupyter Notebook). Pay atention to the code libraries being used, and the way the data is accessed/binned/aligned.

* A good question/hypothesis makes the 5 steps really easy to think through.

* If your model makes a hypothesis that needs to be tested, then your theory project might become a data project. The opposite may also happen: you may find something interesting in the data, and realize that you need a model to understand it better.

* Always be on the lookout for bugs in your code/analysis plain. If a plot/result looks too good to be true, it might be! Make sure you always split your data train/test, even for simple analyses where you think it might not matter (e.g., for making tunning curves).

* Remember to always do a quick literature survey to see if others thought about your questions in the past. Always situate your research within the relevant literature, and try to get hints/suggestions from other papers.

* Data analysis steps:
    * data wrangling: some questions can be answered simply by plotting the right variable from the data! Try scatter plots of different variables; plot across subjects or across trials; select the "best" subjects/sessions and pick a good one and dig deep into thoses.
    * simple linear analyses: particularly needed if doing "population analysis", i.e. trying to determine if a set of units (e.g., neurons, voxels) collectively encode a certain variable. By far, the most used linear analyses are linear regression, PCA and k-means clustering.
    * Linear regression is often a good first step even if your variables are binary/categorical. Once the pipeline is established, it will be easy to switch to logistic regression or other predictors from the scikit-learn library.
    * For visualizations, reduce a population to just a few components using PCA, then go back to the "data wrangling" steps and make the same kinds of plots for PCs that you made for the population.
    * Another way to reduce the size of data is to cluster units (or trials!) into a few subsets, then average within that cluster. The simplest clustering model is k-=means, which is a "linear" clustering model.

* Complicated, nonlinear analyses: if the simple analyses fail, you might think you have no choice but to try something fancy, like deep learning or ISOMAP. This is usually a dead end, you are almost always better off reformulating your question. This is not to say that your hypothesis cannot be a nonlinear model, just that you can often test nonlinear hypotheses with simple, even linear analyses. If you must, however, use complicated analyses, then deep learning "replaces" linear regression, t-SNE/ISOMAP replaces PCA, and hdbscan replaces k-means.
    * Deep learning as a prediction tool. This is unlikely to do better than linear/logistic regression, because neural data is noisy, and you need a lot of training data to really train a deep network well.
    * There are many "nonlinear dimensionality reduction" methods like t-SNE/ISOMAP, but these are often not meant as replacements for PCA, but instead as visualization tools to try to see a clustering structure in your data. They can be useful for making hypotheses based on interesting-looking plots. The hypotheses still need to be validated using simpler methods, like clustering and PCA.
    * Complicated, nonlinear analyses: if the simple analyses fail, you might think you have no choice but to try something fancy, like deep learning or ISOMAP. This is useually a dead end,us are almost always better off reformulating your question. This is not to say thr hypothesis cannot be a nonlinear model, just that you can often test nonlinear hypotheses with simple, even linear analyses. If you must, however, use complicated analyses, then deep learning "replaces" linear regression, t-SNE/ISOMAP replaces PCA, and hdbscan replaces k-means.
        * Deep learning as a prediction tool. This is unlikely to do better than linear/logistic regression, because neural data is noisy, and you need a lot of training data to really train a deep network well.
        * There are many "nonlinear dimensionality reduction" methods like t-SNE/ISOMAP, but these are often not meant as replacements for PCA, but instead as visualization tools to try to see a clustering structure in your data. They can be useful for making hypotheses based on interesting-looking polts. The hypotheses still need to be validated using simpler methods, like clustering and PCA.
        * There are many nonlinear clustering models like hdbscan and spectral clustering, but those are fickle for high-dimensional data and difficult to interpret. You will have to carefully try different parameters, and think through what the clusters mean.

* Go through the first five steps again with your own refined question. Try to write down what the steps look like for your data. Go through steps 6-10. Start thinking what these steps would look like for your project, without actually doing the steps. Which toolkit and where to find some options? Which model to implement? Try to complete the low-hanging fruit first.

* One of the best ways to understand your own research is to try to write about it. Write early and often. Most of the components of an abstract do not require results. Science conferences are a great way to present your intermediate work, and they give you a chance to write an abstract.

* Take the time to find interesting modelling or computational facets to your project, because this will make the abstract writing easier and more enjoyable since you can talk about big, interesting ideas and then gradually focus on the very specific work that you’ve done.
* Starting point for workshopping an abstract is step 10 and the example projects, which show how you can build an abstract if you have been following the 10 steps. With your team:
    * Use the ABC...G questions from the example model/data projects to write your own answers and build a first version of your abstract.
    * Read the [Ten simple rues for structuring papers](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005619)
    * Workshop the abstract as a team. Say what you like and what you don't like abou tit. Use the "Ten simple rules" to find problems with the abstract and follow the recommended solutions from the paper.
    * Edit the abstract individually in your own google doc. At this stage, it is also important to control the flow of the abstract, in addition to keeping the structure from the 10 rules-paper. The flow relates to the “writing style”, which is generally no different for scientists than for other writers. Most importantly, make sure each sentence continues from where the previous one left, and do not use jargon without defining it first. Check out this [book](https://sites.duke.edu/niou/files/2014/07/WilliamsJosephM1990StyleTowardClarityandGrace.pdf) about writing if you have time (book, especially chapter 3 about “cohesion” and flow.
    * Put all the copies of the abstract in the same doc and try to see what everyone did the same/differently. What sounds better? Pick and choose different sentences from different abstracts.
    * Get explicit feedback and edit the abstract with your mentor.
    * Present research to someone who has never heard about it. Ask for detailed writing feedback.
    * Has the abstract refined or changed your question? Make concrete plans to answer your queston or for control analyses, maybe including some simulated data.
