﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @firstName VarChar(4) -- String
SET     @firstName = 'John'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @firstName OR `p`.`LastName` = @firstName

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @firstName VarChar(4) -- String
SET     @firstName = 'John'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @firstName OR `p`.`LastName` = @firstName
LIMIT 2

