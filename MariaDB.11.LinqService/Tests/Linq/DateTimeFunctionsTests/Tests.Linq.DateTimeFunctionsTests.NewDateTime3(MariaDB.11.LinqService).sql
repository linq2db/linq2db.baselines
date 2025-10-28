BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	STR_TO_DATE(Concat(CAST(Extract(year from `t`.`DateTimeValue`) AS CHAR(4)), '-10-01 20:35:44.000'), '%Y-%m-%d %H:%i:%s.%f')
FROM
	`LinqDataTypes` `t`

