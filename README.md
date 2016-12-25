# foRmatDate

forRmatDate is a humanized date  formarting R package，focussed on tools for working with date in R.It has two goals:

- should not  remeber formats string like `%a、%H`
- use the same interface to work with date no matter which it is, whether in a `Date`, `POSIXt` or others.



## Usage

```R
formatDate(Sys.time(),'1997-04-23 14:53:42 GMT')
#[1] "2016-12-25 23:07:10 HKT"

formatDate('2016-12-24','Apr/23/1997 Wen')
#[1] "12/24/2016 Sat"
formatDate('2016-12-24','Apr/23/1997 Wen')
#[1] "12/24/2016 Saturday"

Sys.setlocale("LC_ALL","zh_cn.UTF-8")
#[1] "zh_cn.UTF-8/zh_cn.UTF-8/zh_cn.UTF-8/C/zh_cn.UTF-8/zh_CN.UTF-8"
formatDate('2016-12-24','Apr/23/1997 Wed')
#[1] "12/24/2016 六"
formatDate('2016-12-24','Apr/23/1997 Wednesday')
#[1] "12/24/2016 星期六"
```

## why `1997-04-23 14:53:42`

R's birthday is 1993-08, but the oldest version R (R-0.49)in 

[CRAN-R-0]: https://cran.r-project.org/src/base/R-0/	"CRAN-R-0"

is related at `1997-04-23 14:53`.