BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	CAST(Concat(Extract(hour from `t`.`DateTimeValue`), ':01:01') AS TIME)
FROM
	`LinqDataTypes` `t`

