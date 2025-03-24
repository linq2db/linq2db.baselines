﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(`p`.`PersonID`)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` IN (1, 2) AND `p`.`PersonID` NOT IN (
		SELECT
			`p_1`.`PersonID`
		FROM
			`Person` `p_1`
		WHERE
			`p_1`.`PersonID` IN (3)
	)
LIMIT 2

BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(`p`.`PersonID`)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` IN (3) AND `p`.`PersonID` NOT IN (
		SELECT
			`p_1`.`PersonID`
		FROM
			`Person` `p_1`
		WHERE
			`p_1`.`PersonID` IN (1, 2)
	)
LIMIT 2

