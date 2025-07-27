BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval CAST(22 AS DOUBLE) Hour))
FROM
	`LinqDataTypes` `t`

