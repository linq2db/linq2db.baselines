-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ID`
FROM
	`LinqDataTypes` `p`
WHERE
	CHAR_LENGTH(CAST(CAST(`p`.`ID` AS UNSIGNED) AS CHAR(3))) > 0

