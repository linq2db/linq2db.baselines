BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`c1`
FROM
	(
		SELECT
			Extract(year from `selectParam`.`DateTimeValue`) as `c1`
		FROM
			`LinqDataTypes` `selectParam`
	) `t1`
GROUP BY
	`t1`.`c1`

