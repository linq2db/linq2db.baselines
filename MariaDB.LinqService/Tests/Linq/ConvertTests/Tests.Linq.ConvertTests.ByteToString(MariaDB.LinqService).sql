BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`ID`
FROM
	`LinqDataTypes` `p`
WHERE
	Char_Length(Cast(Cast(`p`.`ID` as UNSIGNED) as CHAR(255))) > 0

