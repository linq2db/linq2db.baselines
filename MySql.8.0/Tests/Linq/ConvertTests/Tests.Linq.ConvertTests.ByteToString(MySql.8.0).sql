-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ID`
FROM
	`LinqDataTypes` `p`
WHERE
	CHAR_LENGTH(CAST(CAST(`p`.`ID` AS UNSIGNED) AS CHAR(3))) > 0

