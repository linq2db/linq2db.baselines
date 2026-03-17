-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CAST(Concat(CAST(Extract(hour from `t`.`DateTimeValue`) AS CHAR(11)), ':01:01') AS TIME)
FROM
	`LinqDataTypes` `t`

