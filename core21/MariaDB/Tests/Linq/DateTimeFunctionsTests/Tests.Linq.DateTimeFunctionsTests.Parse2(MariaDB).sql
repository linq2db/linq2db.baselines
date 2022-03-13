BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(100)), '-02-24 00:00:00') as DATETIME)
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(day from Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(100)), '-02-24 00:00:00') as DATETIME)) > 0

