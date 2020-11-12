BeforeExecute
-- MySqlConnector MySql

SELECT
	Cast(Cast(`p`.`ID` as UNSIGNED) as CHAR(3))
FROM
	`LinqDataTypes` `p`
WHERE
	Char_Length(Cast(Cast(`p`.`ID` as UNSIGNED) as CHAR(3))) > 0

