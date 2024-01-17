﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`nm`.`MiddleName`
FROM
	`Person` `nm`
WHERE
	NOT (`nm`.`MiddleName` IS NULL OR Char_Length(`nm`.`MiddleName`) = 0)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

