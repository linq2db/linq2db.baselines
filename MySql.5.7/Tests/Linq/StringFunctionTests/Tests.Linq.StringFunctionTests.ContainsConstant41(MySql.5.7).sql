﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ps VarChar(1) -- String
SET     @ps = '['
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE(@ps, @s) > 0

