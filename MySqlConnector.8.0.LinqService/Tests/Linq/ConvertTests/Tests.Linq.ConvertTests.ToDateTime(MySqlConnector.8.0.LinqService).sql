BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	CAST(Concat(Extract(year from `p`.`DateTimeValue`), '-01-01 00:00:00') AS DATETIME)
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(day from CAST(Concat(Extract(year from `p`.`DateTimeValue`), '-01-01 00:00:00') AS DATETIME)) > 0

