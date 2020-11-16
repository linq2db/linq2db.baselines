BeforeExecute
-- MySqlConnector MySql

SELECT
	Cast(Concat(Cast(Extract(year from `d`.`DateTimeValue`) as CHAR(11)), '-02-24 00:00:00') as DATETIME)
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from Cast(Concat(Cast(Extract(year from `d`.`DateTimeValue`) as CHAR(11)), '-02-24 00:00:00') as DATETIME)) > 0

