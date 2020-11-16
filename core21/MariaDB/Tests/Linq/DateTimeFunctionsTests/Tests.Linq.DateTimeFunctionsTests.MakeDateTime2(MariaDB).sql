BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Cast(Concat('2010-', Cast(`t`.`ID` as CHAR(11)), '-1 20:35:44') as DateTime)
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(year from Cast(Concat('2010-', Cast(`t`.`ID` as CHAR(11)), '-1 20:35:44') as DateTime)) = 2010

