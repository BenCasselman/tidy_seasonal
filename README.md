# tidy_seasonal
Wrapper for 'seasonal' package that's more friendly for tidy dataframes.
This is a single-function package. 
'seas_adj()' takes three arguments:
df  A data frame containing a date-formatted variable containing dates and a numeric column containing the values to be adjusted.
name_of_date_col  The bare (no quote marks) name of the date variable.
name_of_value_col The bare (no quote marks) name of the values variable.

This is my first R package and was created for my own purposes. It may not work for you! If it doesn't, I may not know how to fix it! But I welcome feedback: ben.casselman@nytimes.com, twitter: @bencasselman

To install, first install the devtools package. Then run the following line in R:
>devtools::install_github("bencasselman/tidy_seasonal/tidyseasonal")
