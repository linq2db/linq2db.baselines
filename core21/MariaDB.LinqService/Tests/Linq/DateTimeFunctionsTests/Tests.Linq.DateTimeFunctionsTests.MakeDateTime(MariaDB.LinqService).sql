BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat('2010-', Cast(`p`.`ID` as CHAR(11)), '-', '1') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

