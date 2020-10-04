BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat('2010-', Cast(`p`.`ID` as CHAR(11)), '-', '1', ' ', '20', ':', '35', ':', '44') as DateTime) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

