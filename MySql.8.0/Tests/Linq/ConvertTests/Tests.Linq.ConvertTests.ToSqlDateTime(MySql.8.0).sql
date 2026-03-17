-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CAST(Concat(CAST(Extract(year from `t`.`DateTimeValue`) AS CHAR(11)), '-01-01 00:20:00') AS DATETIME)
FROM
	`LinqDataTypes` `t`

