BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CAST(Concat(Extract(year from `p`.`DateTimeValue`), '-01-01 00:00:00') AS DATETIME)
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(day from CAST(Concat(Extract(year from `p`.`DateTimeValue`), '-01-01 00:00:00') AS DATETIME)) > 0

