BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t2`.`month_1`,
	`t2`.`month_1`,
	`t2`.`int_1`
FROM
	(
		SELECT
			`t1`.`SmallIntValue` as `month_1`,
			3 as `int_1`
		FROM
			`LinqDataTypes` `t1`
	) `t2`
UNION
SELECT
	`t4`.`Month_1`,
	`t4`.`Year_1`,
	1
FROM
	(
		SELECT
			Extract(month from `t3`.`DateTimeValue`) as `Month_1`,
			Extract(year from `t3`.`DateTimeValue`) as `Year_1`
		FROM
			`LinqDataTypes` `t3`
	) `t4`
GROUP BY
	`t4`.`Month_1`,
	`t4`.`Year_1`
UNION
SELECT
	Extract(year from `t5`.`DateTimeValue`),
	Extract(year from `t5`.`DateTimeValue`),
	2
FROM
	`LinqDataTypes` `t5`

