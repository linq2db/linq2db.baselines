-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	Date(CAST(CAST(`d`.`DateTimeValue` AS CHAR(27)) AS DATETIME))
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from CAST(CAST(`d`.`DateTimeValue` AS CHAR(27)) AS DATETIME)) > 0

