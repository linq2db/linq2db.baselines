﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123?456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND @s LIKE '%~?%' ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123?456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND @s NOT LIKE '%~?%' ESCAPE '~'

