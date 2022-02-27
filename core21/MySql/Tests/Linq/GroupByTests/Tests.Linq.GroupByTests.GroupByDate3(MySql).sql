BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Sum(`t1`.`MoneyValue`),
	Extract(year from `t1`.`Key_1`),
	Extract(month from `t1`.`Key_1`)
FROM
	(
		SELECT
			Cast(Concat(Cast(Extract(year from `selectParam`.`DateTimeValue`) as CHAR(100)), '-', Cast(Extract(month from `selectParam`.`DateTimeValue`) as CHAR(100)), '-1') as Date) as `Key_1`,
			`selectParam`.`MoneyValue`
		FROM
			`LinqDataTypes` `selectParam`
	) `t1`
GROUP BY
	`t1`.`Key_1`

