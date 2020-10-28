BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Cast(Cast(`t`.`ID` as UNSIGNED) as CHAR(3))
FROM
	`LinqDataTypes` `t`
WHERE
	Char_Length(Cast(Cast(`t`.`ID` as UNSIGNED) as CHAR(3))) > 0

