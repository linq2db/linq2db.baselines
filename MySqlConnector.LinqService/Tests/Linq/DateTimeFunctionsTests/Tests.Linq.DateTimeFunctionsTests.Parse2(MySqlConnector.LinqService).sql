BeforeExecute
-- MySqlConnector MySql

SELECT
	Cast(Concat(Extract(year from `d`.`DateTimeValue`), '-02-24 00:00:00') as DATETIME)
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from Cast(Concat(Extract(year from `d`.`DateTimeValue`), '-02-24 00:00:00') as DATETIME)) > 0

