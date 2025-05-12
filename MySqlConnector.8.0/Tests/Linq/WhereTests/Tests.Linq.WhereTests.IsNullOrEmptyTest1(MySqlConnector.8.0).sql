﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`nm`.`MiddleName`
FROM
	`Person` `nm`
WHERE
	NOT (`nm`.`MiddleName` IS NULL OR Char_Length(`nm`.`MiddleName`) = 0)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

