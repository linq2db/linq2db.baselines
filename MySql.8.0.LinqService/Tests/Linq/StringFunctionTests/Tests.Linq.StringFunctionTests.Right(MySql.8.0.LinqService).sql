﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	RIGHT(`p`.`FirstName`, 3) = 'ohn' AND `p`.`PersonID` = 1

