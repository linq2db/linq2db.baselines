﻿BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @str_1 VarChar(4) -- String
SET     @str_1 = '%oh%'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE @str_1 ESCAPE '~' AND `p`.`PersonID` = 1

