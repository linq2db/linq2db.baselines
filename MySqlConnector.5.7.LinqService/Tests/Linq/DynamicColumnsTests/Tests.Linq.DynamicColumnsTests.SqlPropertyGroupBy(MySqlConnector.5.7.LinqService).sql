﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`,
	COUNT(*)
FROM
	`Person` `p`
GROUP BY
	`p`.`FirstName`

