﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `p`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	Concat('Insert14', (
		SELECT
			`p`.`FirstName`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
	)),
	'Shepard',
	'M'
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `p`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

