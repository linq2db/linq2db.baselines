BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Date(`d`.`DateTimeValue`)
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from `d`.`DateTimeValue`) > 0

