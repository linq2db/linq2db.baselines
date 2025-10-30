BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	CAST(CAST(`p`.`ID` AS UNSIGNED) AS CHAR(3))
FROM
	`LinqDataTypes` `p`
WHERE
	CHAR_LENGTH(CAST(CAST(`p`.`ID` AS UNSIGNED) AS CHAR(3))) > 0

