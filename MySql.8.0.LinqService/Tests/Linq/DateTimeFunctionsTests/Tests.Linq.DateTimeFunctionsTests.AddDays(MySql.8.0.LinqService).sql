BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval CAST(5 AS DOUBLE) Day))
FROM
	`LinqDataTypes` `t`

