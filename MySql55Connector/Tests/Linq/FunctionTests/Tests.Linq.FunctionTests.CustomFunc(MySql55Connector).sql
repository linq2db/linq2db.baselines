﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Concat(`p`.`LastName`, ', ', `p`.`FirstName`) = 'Pupkin, John'

