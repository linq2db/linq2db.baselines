BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	WeekDay(Date_Add(`t`.`DateTimeValue`, interval 1 day))
FROM
	`LinqDataTypes` `t`

