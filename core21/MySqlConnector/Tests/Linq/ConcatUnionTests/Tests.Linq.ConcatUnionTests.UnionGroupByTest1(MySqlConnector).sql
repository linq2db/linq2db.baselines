BeforeExecute
-- MySqlConnector MySql

SELECT
	`t2`.`month_1`,
	`t2`.`year_1`,
	`t2`.`int_1`
FROM
	(
		SELECT
			`t1`.`month_1`,
			`t1`.`year_1`,
			1 as `int_1`
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
	) `t2`
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

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

