﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 1

SELECT
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @p
LIMIT 2

