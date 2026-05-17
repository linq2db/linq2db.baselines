-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CAST(CONCAT(CAST(Extract(year from `t`.`DateTimeValue`) AS CHAR(11)), '-01-01') AS DATE)
FROM
	`LinqDataTypes` `t`

