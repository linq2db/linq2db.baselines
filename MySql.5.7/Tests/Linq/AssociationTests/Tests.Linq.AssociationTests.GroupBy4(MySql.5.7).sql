BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Key_1`
FROM
	(
		SELECT
			Extract(year from `selectParam`.`DateTimeValue`) as `Key_1`
		FROM
			`LinqDataTypes` `selectParam`
	) `t1`
GROUP BY
	`t1`.`Key_1`

