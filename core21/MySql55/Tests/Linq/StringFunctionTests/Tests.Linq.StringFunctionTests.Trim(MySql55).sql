﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Trim(Concat('  ', `p`.`FirstName`, ' ')) = 'John' AND
	`p`.`PersonID` = 1

