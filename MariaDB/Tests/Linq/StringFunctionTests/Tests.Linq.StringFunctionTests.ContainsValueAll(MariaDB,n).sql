﻿BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('n', @s) > 0

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND (LOCATE('n', @s) <= 0)

