-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CAST(Concat(CAST(Extract(hour from `t`.`DateTimeValue`) AS CHAR(11)), ':01:01') AS TIME)
FROM
	`LinqDataTypes` `t`

