﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`a_Patient`.`PersonID` IS NOT NULL
FROM
	`Person` `p`
		LEFT JOIN `Patient` `a_Patient` ON `p`.`PersonID` = `a_Patient`.`PersonID`

