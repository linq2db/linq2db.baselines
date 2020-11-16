BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(11)), '-10-1 20:35:44') as DateTime)
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(month from Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(11)), '-10-1 20:35:44') as DateTime)) = 10

