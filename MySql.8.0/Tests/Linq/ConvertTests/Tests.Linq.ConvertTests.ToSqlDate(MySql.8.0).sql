BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CAST(Concat(Extract(year from `t`.`DateTimeValue`), '-01-01') AS DATE)
FROM
	`LinqDataTypes` `t`

