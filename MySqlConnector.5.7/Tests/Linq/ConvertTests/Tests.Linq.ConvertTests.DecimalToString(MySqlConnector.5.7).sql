﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM REPLACE(CAST(`p`.`MoneyValue` AS CHAR(31)), ',', '.')))
FROM
	`LinqDataTypes` `p`
WHERE
	CHAR_LENGTH(CAST(`p`.`MoneyValue` AS CHAR(31))) > 0

