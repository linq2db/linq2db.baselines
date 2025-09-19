BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Date Datetime -- DateTime
SET     @Date = '2020-02-29'
DECLARE @dateTo Datetime -- DateTime
SET     @dateTo = '2020-03-10'

WITH RECURSIVE `x` (`Counter`, `Date_1`)
AS
(
	SELECT
		CAST(1 AS SIGNED),
		CAST(@Date AS DATETIME)
	UNION ALL
	SELECT
		`t1`.`Counter` + 1,
		Date_Add(`t1`.`Date_1`, Interval 1 Day)
	FROM
		`x` `t1`
	WHERE
		Date_Add(`t1`.`Date_1`, Interval 1 Day) < @dateTo
)
SELECT
	`t2`.`Counter`,
	`t2`.`Date_1`
FROM
	`x` `t2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Date Datetime -- DateTime
SET     @Date = '2020-02-29'
DECLARE @dateTo Datetime -- DateTime
SET     @dateTo = '2020-03-10'

WITH RECURSIVE `x` (`Counter`, `Date_1`)
AS
(
	SELECT
		CAST(1 AS SIGNED),
		CAST(@Date AS DATETIME)
	UNION ALL
	SELECT
		`t1`.`Counter` + 1,
		Date_Add(`t1`.`Date_1`, Interval 1 Day)
	FROM
		`x` `t1`
	WHERE
		Date_Add(`t1`.`Date_1`, Interval 1 Day) < @dateTo
)
SELECT
	`t2`.`Counter`,
	`t2`.`Date_1`
FROM
	`x` `t2`

