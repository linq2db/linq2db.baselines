BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Cast(Concat(Cast(Extract(hour from `t`.`DateTimeValue`) as CHAR(11)), ':01:01') as Time)
FROM
	`LinqDataTypes` `t`

