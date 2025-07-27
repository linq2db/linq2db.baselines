BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval CAST(-35 AS DOUBLE) Second))
FROM
	`LinqDataTypes` `t`

