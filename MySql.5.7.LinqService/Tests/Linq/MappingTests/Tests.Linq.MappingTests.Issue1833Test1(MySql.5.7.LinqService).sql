﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`e`.`PersonID`,
	`e`.`FirstName`,
	`e`.`LastName`,
	Concat(`e`.`FirstName`, ':', `e`.`LastName`)
FROM
	`Person` `e`
WHERE
	`e`.`PersonID` = 1
LIMIT 2

