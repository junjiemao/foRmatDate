## 1997-04-23 14:53:42
dateFormater <- list(
  '1997' = "%Y",
  '04' = '%m',
  '23' = '%d',
  '14' = '%H',
  '53' = '%M',
  '42' = '%S',
  'Wednesday' = '%A',
  'Wed' = '%a',
  'Apr' = '%b',
  'April' = '%B',
  '19' = "%C",
  '97' = '%y', ##??
  '02' = '%I',
  '_23' = '%e',
  '113' = '%j',
  'am' = '%p',
  'pm' = '%p',
  '02:53:42 pm' = '%r',
  '3' = '%u', # weekday as decimal number,Monday is 1
  '2' = '%w', #,Monday is 0 ???
  '16' = '%U', ## Week of the year as decimal number (00–53)
               ##using Sunday as the first day 1 of the week
  '17' = '%V', ## Week of the year as decimal number (01–53)
               ##as defined in ISO 8601.
  '+0000' = '%z',
  'GMT' = '%Z')

replaceFormater <- function(format){
  for(fr in names(dateFormater)){
    format <- sub(pattern = fr,
                  replacement = dateFormater[[fr]],
                  x=format)
  }
  format
}
