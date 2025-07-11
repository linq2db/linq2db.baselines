﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`s`.`ID`,
	`s`.`FirstName`
FROM
	(
		SELECT
			CASE
				WHEN CHAR_LENGTH(`p`.`FirstName`) >= `p`.`PersonID` THEN `p`.`FirstName`
				ELSE LPAD(`p`.`FirstName`, `p`.`PersonID`, '.')
			END as `FirstName`,
			`p`.`PersonID` as `ID`
		FROM
			`Person` `p`
	) `s`
WHERE
	`s`.`FirstName` <> ''

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

