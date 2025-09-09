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
	`p`.`PersonID` = 2
UNION ALL
SELECT
	`p_1`.`FirstName`,
	`p_1`.`PersonID`,
	`p_1`.`LastName`,
	`p_1`.`MiddleName`,
	`p_1`.`Gender`
FROM
	`Person` `p_1`
WHERE
	`p_1`.`PersonID` = 3

