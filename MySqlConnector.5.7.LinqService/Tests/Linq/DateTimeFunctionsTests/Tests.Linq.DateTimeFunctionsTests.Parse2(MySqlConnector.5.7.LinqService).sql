BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	CAST(Concat(Extract(year from `d`.`DateTimeValue`), '-02-24 00:00:00') AS DATETIME)
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from CAST(Concat(Extract(year from `d`.`DateTimeValue`), '-02-24 00:00:00') AS DATETIME)) > 0

