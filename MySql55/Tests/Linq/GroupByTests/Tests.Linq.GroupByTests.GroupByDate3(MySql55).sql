BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Sum(`t1`.`MoneyValue`),
	Extract(year from `t1`.`Key_1`),
	Extract(month from `t1`.`Key_1`)
FROM
	(
		SELECT
			Cast(Concat(Lpad(Extract(year from `selectParam`.`DateTimeValue`),4,'0'), '-', Lpad(Extract(month from `selectParam`.`DateTimeValue`),2,'0'), '-01') as Date) as `Key_1`,
			`selectParam`.`MoneyValue`
		FROM
			`LinqDataTypes` `selectParam`
	) `t1`
GROUP BY
	`t1`.`Key_1`

