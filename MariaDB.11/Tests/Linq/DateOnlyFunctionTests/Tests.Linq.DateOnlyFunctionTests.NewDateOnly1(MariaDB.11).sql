BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	STR_TO_DATE(Concat(CAST(Extract(year from `t`.`DateTimeValue`) AS CHAR(4)), '-10-01 00:00:00.000'), '%Y-%m-%d %H:%i:%s.%f')
FROM
	`LinqDataTypes` `t`

