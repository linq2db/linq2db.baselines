﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p1`.`FirstName`,
	`p1`.`PersonID`,
	`p1`.`LastName`,
	`p1`.`MiddleName`,
	`p1`.`Gender`,
	`p2`.`FirstName`,
	`p2`.`PersonID`,
	`p2`.`LastName`,
	`p2`.`MiddleName`,
	`p2`.`Gender`
FROM
	`Person` `p1`
		INNER JOIN `Person` `p2` ON `p1`.`MiddleName` = `p2`.`MiddleName`

