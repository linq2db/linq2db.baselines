BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CAST(CAST(`p`.`ID` AS UNSIGNED) AS CHAR(3))
FROM
	`LinqDataTypes` `p`
WHERE
	Char_Length(CAST(CAST(`p`.`ID` AS UNSIGNED) AS CHAR(3))) > 0

