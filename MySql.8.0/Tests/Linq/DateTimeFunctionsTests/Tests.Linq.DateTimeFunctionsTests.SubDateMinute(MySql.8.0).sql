BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	TIMESTAMPDIFF(minute, `t`.`DateTimeValue`, Date_Add(`t`.`DateTimeValue`, Interval CAST(100 AS DOUBLE) Minute))
FROM
	`LinqDataTypes` `t`

