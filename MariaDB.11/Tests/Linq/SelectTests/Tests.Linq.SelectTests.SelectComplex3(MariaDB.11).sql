﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`PersonID`,
	`_`.`Gender`,
	`_`.`FirstName`,
	`_`.`LastName`,
	`_`.`MiddleName`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1
LIMIT @take

