﻿BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND @s LIKE '%n%' ESCAPE '~'

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND @s NOT LIKE '%n%' ESCAPE '~'

