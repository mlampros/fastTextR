
## fastTextR
<br>

The fastTextR package is an R wrapper (only) for the *skipgram* and *cbow* functions of the [*fastText*](https://github.com/facebookresearch/fastText) library. *fastText* is a library for efficient learning of word representations and sentence classification. Since it uses C++11 features, it requires a compiler with good C++11 support. These include : (gcc-4.6.3 or newer) or (clang-3.3 or newer). More information about the fastText library can be found in [https://github.com/facebookresearch/fastText](https://github.com/facebookresearch/fastText). COPYRIGHTS, LICENSE and PATENTS files can be found in the *inst* folder of the R package.

<br>

To install the package from Github use the *install_github* function of the devtools package,
<br><br>

```R

devtools::install_github('mlampros/fastTextR')


```
<br>

Use the following link to report bugs/issues (for the R wrapper),
<br><br>

[https://github.com/mlampros/fastTextR/issues](https://github.com/mlampros/fastTextR/issues)


<br>

#### **Example usage**


<br>

```R


# example input data ---> 'dat.txt'



library(fastTextR)



#--------------------------
# skipgram or cbow methods
#--------------------------


res = skipgram_cbow(input_path = "/data_fasttext/dat.txt",

                    output_path = "/data_fasttext/model", 
                    
                    method = "skipgram", lr = 0.1, 
                    
                    lrUpdateRate = 100, dim = 100,
                    
                    ws = 5, epoch = 5, minCount = 1, 
                    
                    neg = 5, wordNgrams = 1, loss = "ns", 
                    
                    bucket = 2000000, minn = 0,
                    
                    maxn = 0, thread = 6, t = 0.0001, 
                    
                    verbose = 2)
                    
                    
                
#-------------------------------------------------------------
# prediction of unknown words for the skipgram and cbow models
#-------------------------------------------------------------


res = predict_unknown_words(skipgram_cbow_model_output = "/data_fasttext/model.bin",

                            unknown_words_path = "/data_fasttext/queries.txt",
                            
                            output_path = "/data_fasttext/NEW_VEC",
                            
                            verbose = TRUE)

```

<br>

More information about the parameters of each function can be found in the package documentation.


<br>