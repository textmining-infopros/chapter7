# Case Study : Sentiment Analysis of Documents using Two Different Tools

This repository contains a reproducible research compendium for the case study used in the book:
Manika Lamba and Margam Madhusudhan (2021) Text Mining for Information Professionals: An Uncharted Territory, SpringerNature.

# How to cite
Please cite this compendium as: xxxxxxx

# Contents
The compendium contains the data, code, and notebook associated with the case study. This case study is further divided into 7A, and 7B. 7A case study used RapidMiner, and 7B case study used R programming language to perform sentiment analysis. It is organized as follows:

  - The `data.csv` file contains the data. The same dataset was used for both the case studies.
    - The `negative_book_reviews.csv` file contains the supplementary data associated with 7B case study.
    - The `neutral_book_reviews.csv` file contains the supplementary data associated with 7B case study.
    - The `positive_book_reviews.csv` file contains the supplementary data associated with 7B case study.
  - The `sentiment_analysis.R` file contatins the R code for 7B case study.
  - The `Case_Study_7B.ipynb` file contatins the Jupyter notebook for 7B case study.

# How to download or install
There are several ways to use the compendium’s contents and reproduce
the analysis:

  - **Download the compendium as a zip archive** from this [GitHub
    repository](https://github.com/textmining-infopros/chapter7/archive/master.zip).
    
      - After unpacking the downloaded zip archive, you can explore the
        files on your computer.

  - **Reproduce the analysis in the cloud** without having to install
    any software. The same Docker container replicating the
    computational environment used by the authors can be run using
    BinderHub on [mybinder.org](https://mybinder.org/):
    
      - Click
        **RStudio**: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/textmining-infopros/chapter7/master?urlpath=rstudio)
        to launch an interactive [RStudio](https://rstudio.com/) session in your web browser.
        
       - Click
        **Jupyter+R**: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/textmining-infopros/chapter7/master?filepath=Case_Study_7B.ipynb) to launch an interactive [Jupyter Notebook](https://jupyter.org/) session in your web browser using [R](https://cloud.r-project.org/index.html) kernel. When you execute code within the notebook, the results appear beneath the code.

       - **Limitations of Binder**
          1. The server has limited memory so you cannot load large datasets or run big computations.
          2. Binder is meant for interactive and ephemeral interactive coding so an instance will die after 10 minutes of inactivity.
          3. An instance cannot be kept alive for more than 12 hours.

### Licenses

**Text and figures**, **Code**, **Data**: [CC-BY-4.0](http://creativecommons.org/licenses/by/4.0/)
