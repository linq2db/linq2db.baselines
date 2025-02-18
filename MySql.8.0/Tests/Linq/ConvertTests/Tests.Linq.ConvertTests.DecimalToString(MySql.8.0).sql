BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM REPLACE(CAST(`p`.`MoneyValue` AS CHAR(255)), ',', '.')))
FROM
	`LinqDataTypes` `p`
WHERE
	Char_Length(CAST(`p`.`MoneyValue` AS CHAR(255))) > 0

