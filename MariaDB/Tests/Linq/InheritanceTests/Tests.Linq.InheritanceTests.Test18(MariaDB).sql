﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`PersonID`,
	`t1`.`Gender`,
	`t1`.`FirstName`,
	`t1`.`LastName`
FROM
	(
		SELECT DISTINCT
			`p1`.`PersonID`,
			`p1`.`Gender`,
			`p1`.`FirstName`,
			`p1`.`LastName`
		FROM
			`Person` `p1`
		WHERE
			`p1`.`PersonID` IN (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
	) `t1`
WHERE
	`t1`.`Gender` = 'F'

