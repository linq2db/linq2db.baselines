BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH RECURSIVE `x` (`Counter`, `Date_1`)
AS
(
	SELECT
		CAST(1 AS SIGNED),
		CAST('2020-02-29' AS DATETIME)
	UNION ALL
	SELECT
		`t1`.`Counter` + 1,
		Date_Add(`t1`.`Date_1`, Interval 1 Day)
	FROM
		`x` `t1`
	WHERE
		Date_Add(`t1`.`Date_1`, Interval 1 Day) < '2020-03-10'
)
SELECT
	`t2`.`Counter`,
	`t2`.`Date_1`
FROM
	`x` `t2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH RECURSIVE `x` (`Counter`, `Date_1`)
AS
(
	SELECT
		CAST(1 AS SIGNED),
		CAST('2020-02-29' AS DATETIME)
	UNION ALL
	SELECT
		`t1`.`Counter` + 1,
		Date_Add(`t1`.`Date_1`, Interval 1 Day)
	FROM
		`x` `t1`
	WHERE
		Date_Add(`t1`.`Date_1`, Interval 1 Day) < '2020-03-10'
)
SELECT
	`t2`.`Counter`,
	`t2`.`Date_1`
FROM
	`x` `t2`

