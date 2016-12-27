# foRmatDate

foRmatDate是一个人性化的格式日期字符串的R包，使用类似Go的时间格式风格。无需
再记`%H,%b`之类的符号，人生苦短，我用foRmatDate。

## Usage

```R
devtools::install_github(repo = 'foRmatDate',username = 'junjiemao')

formatDate(Sys.time(),'1997-04-23 14:53:42 GMT')
#[1] "2016-12-25 23:07:10 HKT"

formatDate('2016-12-24','Apr/23/1997 Wed')
#[1] "Dec/24/2016 Sat"
formatDate('2016-12-24','April/23/1997 Wed')
#[1] "Decil/24/2016 Saturday"

Sys.setlocale("LC_ALL","zh_cn.UTF-8")
#[1] "zh_cn.UTF-8/zh_cn.UTF-8/zh_cn.UTF-8/C/zh_cn.UTF-8/zh_CN.UTF-8"
formatDate('2016-12-24','Apr/23/1997 Wed')
#[1] "12/24/2016 六"
formatDate('2016-12-24','Apr/23/1997 Wednesday')
#[1] "12/24/2016 星期六"
```

## why `1997-04-23 14:53:42`
R诞生于1993年8月，但是在[CRAN-R-0]( https://cran.r-project.org/src/base/R-0/)
上找到的最久的版本（R-0.49）是 `1997-04-23 14:53`，所以选用该时间节点作为样例。
此外，为了能够表示每一个元素，我们选择了[42](https://www.wikiwand.com/zh-cn/42)这个容易记住的数字来表示秒。

