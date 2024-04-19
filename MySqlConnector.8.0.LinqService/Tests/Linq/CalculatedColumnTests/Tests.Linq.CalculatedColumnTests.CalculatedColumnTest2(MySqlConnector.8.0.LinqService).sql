﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`PersonID`,
	`t1`.`FirstName`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`,
	Concat(`t1`.`LastName`, ', ', `t1`.`FirstName`),
	Concat(`t1`.`LastName`, ', ', `t1`.`FirstName`),
	(
		SELECT
			COUNT(*)
		FROM
			`Doctor` `d`
		WHERE
			`d`.`PersonID` = `t1`.`PersonID`
	)
FROM
	`Person` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`i`.`PersonID`,
	`i`.`FirstName`,
	`i`.`LastName`,
	`i`.`MiddleName`,
	`i`.`Gender`,
	Concat(`i`.`LastName`, ', ', `i`.`FirstName`),
	Concat(`i`.`LastName`, ', ', `i`.`FirstName`),
	(
		SELECT
			COUNT(*)
		FROM
			`Doctor` `d`
		WHERE
			`d`.`PersonID` = `i`.`PersonID`
	)
FROM
	`Person` `i`
WHERE
	Concat(`i`.`LastName`, ', ', `i`.`FirstName`) <> 'Pupkin, John'

