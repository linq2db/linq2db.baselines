BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`_`.`SmallIntValue`,
	`_`.`SmallIntValue`,
	3
FROM
	`LinqDataTypes` `_`
UNION
SELECT
	`t1`.`c1`,
	`t1`.`c2`,
	`t1`.`int_1`
FROM
	(
		SELECT
			Extract(month from `selectParam`.`DateTimeValue`) as `c1`,
			Extract(year from `selectParam`.`DateTimeValue`) as `c2`,
			1 as `int_1`
		FROM
			`LinqDataTypes` `selectParam`
		GROUP BY
			Extract(month from `selectParam`.`DateTimeValue`),
			Extract(year from `selectParam`.`DateTimeValue`)
	) `t1`
UNION
SELECT
	Extract(year from `_1`.`DateTimeValue`),
	Extract(year from `_1`.`DateTimeValue`),
	2
FROM
	`LinqDataTypes` `_1`

