﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Concat(Left(`p`.`FirstName`, 1), RIGHT(`p`.`FirstName`, Char_Length(`p`.`FirstName`) - 3)) = 'Jn' AND
	`p`.`PersonID` = 1

