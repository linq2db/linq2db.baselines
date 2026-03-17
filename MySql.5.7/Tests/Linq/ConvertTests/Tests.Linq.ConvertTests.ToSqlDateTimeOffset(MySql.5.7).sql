-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CAST(Concat(CAST(Extract(year from `t`.`DateTimeValue`) AS CHAR(11)), '-01-01 00:20:00') AS DATETIME)
FROM
	`LinqDataTypes` `t`

