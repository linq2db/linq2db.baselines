﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	Concat('1', `t1`.`FirstName` COLLATE utf8_bin, '2')

