﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ID`
FROM
	`LinqDataTypes` `p`
WHERE
	Char_Length(CAST(CAST(`p`.`ID` AS UNSIGNED) AS CHAR(3))) > 0

