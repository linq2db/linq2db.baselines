-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CAST(Concat(CAST(Extract(year from `p`.`DateTimeValue`) AS CHAR(11)), '-01-01 00:00:00') AS DATETIME)
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(day from CAST(Concat(CAST(Extract(year from `p`.`DateTimeValue`) AS CHAR(11)), '-01-01 00:00:00') AS DATETIME)) > 0

