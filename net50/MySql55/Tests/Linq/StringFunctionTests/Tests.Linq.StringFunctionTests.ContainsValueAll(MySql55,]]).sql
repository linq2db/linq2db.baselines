﻿BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @s VarChar(8) -- String
SET     @s = '123]]456'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND @s LIKE '%~]~]%' ESCAPE '~'

