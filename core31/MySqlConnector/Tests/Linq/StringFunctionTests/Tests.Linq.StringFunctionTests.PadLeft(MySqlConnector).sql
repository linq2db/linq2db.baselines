﻿BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Concat('123', LPad(`p`.`FirstName`, 6, ' ')) = '123  John' AND
	`p`.`PersonID` = 1

