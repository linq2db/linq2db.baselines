﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 1

SELECT
	`p1`.`PersonID`,
	`p2`.`FirstName`
FROM
	`Person` `p1`,
	`Person` `p2`
WHERE
	`p2`.`PersonID` = @id AND `p1`.`PersonID` = `p2`.`PersonID`

