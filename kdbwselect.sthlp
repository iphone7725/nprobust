{smcl}
{* *! version 0.1.2  05-01-2018}{...}
{viewerjumpto "Syntax" "kdbwselect##syntax"}{...}
{viewerjumpto "Description" "kdbwselect##description"}{...}
{viewerjumpto "Options" "kdbwselect##options"}{...}
{viewerjumpto "Examples" "kdbwselect##examples"}{...}
{viewerjumpto "Saved results" "kdbwselect##saved_results"}{...}

{title:Title}

{p 4 8}{cmd:kdbwselect} {hline 2} Bandwidth Selection Procedures for Kernel Density Estimation and Inference.{p_end}

{marker syntax}{...}
{title:Syntax}

{p 4 8}{cmd:kdbwselect } {it:varname} {ifin} 
[{cmd:,} 
{cmd:eval(}{it:gridvar}{cmd:)} 
{cmd:neval(}{it:#}{cmd:)}
{cmd:rho(}{it:#}{cmd:)}
{cmd:kernel(}{it:kernelfn}{cmd:)}
{cmd:bwselect(}{it:bwmethod}{cmd:)}
{cmd:bwcheck(}{it:#}{cmd:)}
{cmd:imsegrid(}{it:#}{cmd:)}
{cmd:separator(}{it:#}{cmd:)}
]{p_end}

{synoptset 28 tabbed}{...}

{marker description}{...}
{title:Description}

{p 4 8}{cmd:kdbwselect} implements bandwidth selectors for kernel density point estimators and inference procedures developed in
{browse "https://sites.google.com/site/nppackages/nprobust/Calonico-Cattaneo-Farrell_2018_JASA.pdf":Calonico, Cattaneo and Farrell (2018a)}.
It also implements other bandwidth selectors available in the literature. See Wand and Jones (1995) and Fan and Gijbels (1996) for background references.{p_end}

{p 4 8} A detailed introduction to this command is given in
{browse "http://sites.google.com/site/nppackages/nprobust/Calonico-Cattaneo-Farrell_2018_JSS.pdf":Calonico, Cattaneo and Farrell (2018b)}.

{p 4 8} Companion command is: {help kdrobust:kdrobust} for point estimation and inference procedures.{p_end}

{p 4 8}Related Stata and R packages useful for empirical analysis are described in the following website:{p_end}

{p 8 8}{browse "https://sites.google.com/site/nppackages/":https://sites.google.com/site/nppackages/}{p_end}


{marker options}{...}
{title:Options}

{p 4 8}{opt eval}({it:gridvar}) specifies the grid of evaluation points for {it:xvar}.
By default it uses 30 equally spaced points over to support of {it:xvar}.{p_end}

{p 4 8}{opt neval}({it:#}) specifies the number of evaluation points to estimate the regression functions. Default is 30 evaluation points. {p_end}

{p 4 8}{opt rho}({it:#}) specifies the value of {it:rho}, so that the bias bandwidth {it:b} equals {it:b}={it:h}/{it:rho}.
Default is {opt rho(1)} if {it:h} is specified but {it:b} is not.{p_end}

{p 4 8}{opt kernel}({it:kernelfn}) specifies the kernel function used. Options are: {opt epa:nechnikov}, and {opt uni:form}.
Default is {opt kernel(epanechnikov)}.{p_end}

{p 4 8}{opt bwselect}({it:bwmethod}) bandwidth selection procedure to be used. By default it computes both h and b, unless rho is specified, in which case it only computes h and sets b=h/rho.
Options are:{p_end}
{p 8 12}{opt mse-dpi} second-generation DPI implementation of MSE-optimal bandwidth. Default choice.{p_end}
{p 8 12}{opt mse-rot} ROT implementation of MSE-optimal bandwidth. {p_end}
{p 8 12}{opt imse-dpi} second-generation DPI implementation of IMSE-optimal bandwidth. {p_end}
{p 8 12}{opt imse-rot} ROT implementation of IMSE-optimal bandwidth.{p_end}
{p 8 12}{opt ce-dpi} second generation DPI implementation of CE-optimal bandwidth.{p_end}
{p 8 12}{opt ce-rot} ROT implementation of CE-optimal bandwidth.{p_end}
{p 4 12}Note: MSE = Mean Square Error; IMSE = Integrated Mean Squared Error; CE = Coverage Error; DPI = Direct Plug-in; ROT = Rule-of-Thumb.{p_end}
{p 8 12}Default is {opt bwselect(mse-dpi)}. For details on implementation see
{browse "http://sites.google.com/site/nppackages/nprobust/Calonico-Cattaneo-Farrell_2018_JSS.pdf":Calonico, Cattaneo and Farrrell (2018b)}.{p_end}

{p 4 8}{opt bwcheck}({it:#}) specifies an optional positive integer so that the selected bandwidth is enlarged to have at least {it:#} effective observations available at each evaluation point.{p_end}

{p 4 8}{opt imsegrid}({it:#}) number of evaluations points used to compute the IMSE bandwidth selector. Default is 30 points.{p_end}

{p 4 8}{opt separator}({it:#}) draws separator line after every {it:#} variables; default is separator(5).{p_end}


    {hline}


{marker examples}{...}
{title:Example:}

{p 4 8}Setup{p_end}
{p 8 8}{cmd:. sysuse auto}{p_end}

{p 4 8}MSE bandwidth selection procedure{p_end}
{p 8 8}{cmd:. kdbwselect length}{p_end}


{marker saved_results}{...}
{title:Saved results}

{p 4 8}{cmd:kdbwselect} saves the following in {cmd:e()}:

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: Scalars}{p_end}
{synopt:{cmd:e(N)}}original number of observations{p_end}

{p2col 5 20 24 2: Macros}{p_end}
{synopt:{cmd:e(varname)}}name of variable{p_end}
{synopt:{cmd:e(bwselect)}}bandwidth selection choice{p_end}
{synopt:{cmd:e(kernel)}}kernel choice{p_end}

{p2col 5 20 24 2: Matrices}{p_end}
{synopt:{cmd:e(bws)}}estimation result{p_end}


{title:References}

{p 4 8}Calonico, S., M. D. Cattaneo, and M. H. Farrell. 2018a.
{browse "https://sites.google.com/site/nppackages/nprobust/Calonico-Cattaneo-Farrell_2018_JASA.pdf":On the Effect of Bias Estimation on Coverage Accuracy in Nonparametric Inference}.
{it:Journal of the American Statistical Association}, forthcoming.{p_end}

{p 4 8}Calonico, S., M. D. Cattaneo, and M. H. Farrell. 2018b.
{browse "http://sites.google.com/site/nppackages/nprobust/Calonico-Cattaneo-Farrell_2018_JSS.pdf":nprobust: Nonparametric Kernel-Based Estimation and Robust Bias-Corrected Inference}.
{it:Working Paper}.{p_end}

{p 4 8}Fan, J., and Gijbels, I. 1996. Local Polynomial Modelling and Its Applications, London: Chapman and Hall.{p_end}

{p 4 8}Wand, M., and Jones, M. 1995. Kernel Smoothing, Florida: Chapman & Hall/CRC.{p_end}


{title:Authors}

{p 4 8}Sebastian Calonico, University of Miami, Coral Gables, FL.
{browse "mailto:scalonico@bus.miami.edu":scalonico@bus.miami.edu}.{p_end}

{p 4 8}Matias D. Cattaneo, University of Michigan, Ann Arbor, MI.
{browse "mailto:cattaneo@umich.edu":cattaneo@umich.edu}.{p_end}

{p 4 8}Max H. Farrell, University of Chicago, Chicago, IL.
{browse "mailto:max.farrell@chicagobooth.edu":max.farrell@chicagobooth.edu}.{p_end}

