BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`month_1`,
	`t1`.`month_1`,
	`t1`.`int_1`
FROM
	(
		SELECT
			Cast(`_`.`SmallIntValue` as SIGNED) as `month_1`,
			3 as `int_1`
		FROM
			`LinqDataTypes` `_`
	) `t1`
UNION
SELECT
	`t2`.`Month_1`,
	`t2`.`Year_1`,
	1
FROM
	(
		SELECT
			Extract(month from `_1`.`DateTimeValue`) as `Month_1`,
			Extract(year from `_1`.`DateTimeValue`) as `Year_1`
		FROM
			`LinqDataTypes` `_1`
	) `t2`
GROUP BY
	`t2`.`Month_1`,
	`t2`.`Year_1`
UNION
SELECT
	Extract(year from `_2`.`DateTimeValue`),
	Extract(year from `_2`.`DateTimeValue`),
	2
FROM
	`LinqDataTypes` `_2`

