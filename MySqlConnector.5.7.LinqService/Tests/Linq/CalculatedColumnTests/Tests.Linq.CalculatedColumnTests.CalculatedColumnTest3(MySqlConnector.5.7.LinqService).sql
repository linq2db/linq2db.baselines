﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Doctor` `d`
		WHERE
			`d`.`PersonID` = `i`.`PersonID`
	),
	`i`.`PersonID`,
	`i`.`FirstName`,
	`i`.`LastName`,
	`i`.`MiddleName`,
	`i`.`Gender`,
	Concat(`i`.`LastName`, ', ', `i`.`FirstName`),
	(
		SELECT
			Count(*)
		FROM
			`Doctor` `d_1`
		WHERE
			`d_1`.`PersonID` = `i`.`PersonID`
	)
FROM
	`Person` `i`
WHERE
	`i`.`FirstName` <> 'John'

