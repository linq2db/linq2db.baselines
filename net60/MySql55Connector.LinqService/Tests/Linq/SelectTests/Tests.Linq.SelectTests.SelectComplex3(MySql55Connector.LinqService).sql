﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

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
LIMIT 1

