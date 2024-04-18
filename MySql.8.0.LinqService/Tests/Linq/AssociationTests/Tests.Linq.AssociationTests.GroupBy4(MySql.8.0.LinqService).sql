BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

