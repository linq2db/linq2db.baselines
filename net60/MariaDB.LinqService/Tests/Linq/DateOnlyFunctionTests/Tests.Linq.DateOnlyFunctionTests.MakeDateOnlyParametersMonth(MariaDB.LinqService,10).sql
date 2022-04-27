BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Cast(Concat(Cast((2010 + `t`.`ID`) as CHAR(11)), '-10-01') as Date)
FROM
	`LinqDataTypes` `t`

