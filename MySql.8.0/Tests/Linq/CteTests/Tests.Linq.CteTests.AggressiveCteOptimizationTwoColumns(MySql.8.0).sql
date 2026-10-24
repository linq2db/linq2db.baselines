-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Date Datetime -- DateTime
SET     @Date = '2020-02-29'
DECLARE @dateTo Datetime -- DateTime
SET     @dateTo = '2020-03-10'

WITH RECURSIVE `x`
(
	`Counter`,
	`Date_1`,
	`Date_Year`,
	`Date_Month`
)
AS
(
	SELECT
		CAST(1 AS SIGNED),
		CAST(@Date AS DATETIME),
		Extract(year from @Date),
		Extract(month from @Date)
	UNION ALL
	SELECT
		`t1`.`Counter` + 1,
		Date_Add(`t1`.`Date_1`, Interval 1 Day),
		Extract(year from Date_Add(`t1`.`Date_1`, Interval 1 Day)),
		Extract(month from Date_Add(`t1`.`Date_1`, Interval 1 Day))
	FROM
		`x` `t1`
	WHERE
		Date_Add(`t1`.`Date_1`, Interval 1 Day) < @dateTo
)
SELECT
	`r`.`Date_1`,
	STR_TO_DATE(CONCAT(CAST(`r`.`Date_Year` AS CHAR(4)), '-', LPad(CAST(`r`.`Date_Month` AS CHAR(2)), 2, '0'), '-', LPad(CAST(`r`.`Counter` AS CHAR(2)), 2, '0'), ' 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')
FROM
	`x` `r`

