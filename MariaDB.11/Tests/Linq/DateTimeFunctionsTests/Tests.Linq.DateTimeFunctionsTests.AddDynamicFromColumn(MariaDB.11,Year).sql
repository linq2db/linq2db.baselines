-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Year)
FROM
	`LinqDataTypes` `t`

