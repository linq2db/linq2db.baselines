BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Cast(Concat('2010-', Cast(`p`.`ID` as CHAR(11)), '-1') as Date)
FROM
	`LinqDataTypes` `p`
WHERE
	Extract(year from Cast(Concat('2010-', Cast(`p`.`ID` as CHAR(11)), '-1') as Date)) = 2010

