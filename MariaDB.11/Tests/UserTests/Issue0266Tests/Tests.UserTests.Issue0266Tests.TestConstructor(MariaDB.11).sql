﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`_`.`FirstName`,
	`_`.`PersonID`,
	`_`.`LastName`,
	`_`.`MiddleName`,
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1
LIMIT @take

