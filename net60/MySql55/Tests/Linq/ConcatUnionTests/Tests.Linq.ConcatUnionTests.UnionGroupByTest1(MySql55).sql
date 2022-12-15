BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`month_1`,
	`t1`.`year_1`,
	1
FROM
	(
		SELECT
			Extract(month from `selectParam`.`DateTimeValue`) as `month_1`,
			Extract(year from `selectParam`.`DateTimeValue`) as `year_1`
		FROM
			`LinqDataTypes` `selectParam`
	) `t1`
GROUP BY
	`t1`.`month_1`,
	`t1`.`year_1`
UNION
SELECT
	`_`.`SmallIntValue`,
	`_`.`SmallIntValue`,
	3
FROM
	`LinqDataTypes` `_`
UNION
SELECT
	Extract(year from `_1`.`DateTimeValue`),
	Extract(year from `_1`.`DateTimeValue`),
	2
FROM
	`LinqDataTypes` `_1`

