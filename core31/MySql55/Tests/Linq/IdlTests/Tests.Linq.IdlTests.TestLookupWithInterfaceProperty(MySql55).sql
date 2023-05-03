﻿BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @id Int32
SET     @id = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`obj`.`PersonID`,
	`obj`.`FirstName`,
	`obj`.`LastName`,
	`obj`.`MiddleName`,
	`obj`.`Gender`
FROM
	`Person` `obj`
WHERE
	`obj`.`PersonID` = @id
LIMIT @take

