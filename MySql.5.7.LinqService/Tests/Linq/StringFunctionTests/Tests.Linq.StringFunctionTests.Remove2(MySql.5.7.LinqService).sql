﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Concat(Left(`p`.`FirstName`, 1), RIGHT(`p`.`FirstName`, CHAR_LENGTH(`p`.`FirstName`) - 3)) = 'Jn' AND
	`p`.`PersonID` = 1

