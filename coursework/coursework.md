## Coursework: Frequently Asked Questions

### Why is one of the categories in the `books` variable `Nov-25`?
This error can be introduced if you open the data in excel, and re-save
the file. It is caused by excel converting `11-25` to `Nov-25`.
To avoid it, do not press save if you open `timss.csv` in Excel: 
you can read the data into `R` directly.

### Should I use `good_at_maths` as the response variable? How can I convert to the numeric response $Y_i$ given in the coursework?

You could use `good_at_maths` directly, but you would need to be careful
to understand
what `R` is doing in that case, because `good_at_maths` is a factor.
In this case, `R` will convert the factor response
`good_at_maths` to a number: what happens when you try 
`as.numeric(timss$good_at_maths)`? What happens to
the entries for children who agree or disagree with the statement?
Does this match with the definition of $Y_i$ in the coursework?
If not, you need to be careful when interpreting the fitted model.

Rather than using `good_at_maths` as the response variable directly, 
you could create a new 
response variable (e.g. called `y`) which is numeric ($0$ or $1$), 
making sure that the new variable
 is $0$ for children who disagree with the statement, and $1$
for those who agree. You could do this by making suitable changes to
`as.numeric(timss$good_at_maths)`, or by using the `ifelse` function.

### Should I follow everything done in the computer worksheets for a binary response? Should I start off by fitting a linear model to the data?

You may find that you run out of space
in your report if you replicate every step from the computer worksheets,
so I recommend focussing on fitting the type of models which
are appropriate for a binary response.

### How should I interpret diagnostic plots for a GLM?

I would be a bit cautious about interpreting diagnostic plots
(e.g. residual or Q-Q plots) for 
GLMs: these plots are really designed for linear models, and often don't
look "good" for a binary response, even if the assumptions of the model
are met. Interpreting these plots is not a requirement of
this coursework.

### How can I interpret the estimates of the coefficients?

In simple cases, you can use the sign of the estimate to say whether
a student is more or less likely to agree with the statement, if you
changing one explanatory variable at a time and keep all other
variables fixed. In more complex
cases, or if you are unsure about the interpretation, you could
try making some plots of predicted probabilities against explanatory
variables, to examine the effect of changing the values of explanatory
variables. For instance, you might plot how the predicted probability of
agreeing with the statement changes with score (with 
separate lines for the different levels of other
explanatory variables of interest).