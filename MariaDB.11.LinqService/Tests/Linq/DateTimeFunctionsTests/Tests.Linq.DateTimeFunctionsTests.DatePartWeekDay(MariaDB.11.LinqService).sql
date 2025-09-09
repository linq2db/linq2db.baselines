BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	WeekDay(Date_Add(`t`.`DateTimeValue`, interval 1 day)) + 1
FROM
	`LinqDataTypes` `t`

