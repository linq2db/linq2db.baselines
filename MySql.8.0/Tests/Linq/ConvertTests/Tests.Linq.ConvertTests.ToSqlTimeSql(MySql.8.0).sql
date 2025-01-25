BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CAST(Concat(Extract(hour from `t`.`DateTimeValue`), ':01:01') AS TIME)
FROM
	`LinqDataTypes` `t`

