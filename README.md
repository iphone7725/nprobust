# nprobust

The **nprobust** package provides **Stata** and **R** implementations of bandwidth selection, point estimation and inference procedures for nonparametric kernel-based density and local polynomial methods.

This work is supported by the National Science Foundation through grant [SES-1459931](http://www.nsf.gov/awardsearch/showAward?AWD_ID=1459931).

For technical, methodological and implementation details see the following papers (and references therein):

*   Calonico, Cattaneo and Farrell (2018): [On the Effect of Bias Estimation on Coverage Accuracy in Nonparametric Inference](), _Journal of the American Statistical Association_ 113(522): 767-779. [[Supplemental Appendix]()]
*   Calonico, Cattaneo and Farrell (2018):&nbsp;[Coverage Error Optimal Confidence Intervals](). [[Supplemental Appendix]()]
*   Calonico, Cattaneo and Farrell (2018): [<font face="courier new, monospace">nprobust</font>: Nonparametric Kernel-Based Estimation and Robust Bias-Corrected Inference](), _Journal of Statistical Software_, forthcoming.

**Implementation in Stata:**

*   To install/update in Stata type:  
```  
· net install nprobust, from(https://sites.google.com/site/nppackages/nprobust/stata) replace
```  
  or  
```  
· github install iphone7725/nprobust
```  
*   Help files: [kdrobust](), [kdbwselect](), [lprobust](), [lpbwselect]() -- Replication files: [do-file](), [nprobust_data]()
*   Repository for manual installation: [https://sites.google.com/site/nppackages/nprobust/stata]()

**Implementation in R:**

*   To install/update in R type:  
```  
· install.packages('nprobust')
```  
*   [Manual](https://cran.r-project.org/web/packages/nprobust/nprobust.pdf) -- Replication files: [R-script](), [nprobust_data]()
*   [CRAN repository](https://cran.r-project.org/package=nprobust)

**Last update**: May 1, 2018.
