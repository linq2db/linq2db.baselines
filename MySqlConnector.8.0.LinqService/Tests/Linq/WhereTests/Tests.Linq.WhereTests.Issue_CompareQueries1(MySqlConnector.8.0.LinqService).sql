BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	COUNT(`p`.`PersonID`)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` IN (1, 2)
LIMIT 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	COUNT(`p`.`PersonID`)
FROM
	`Person` `p`
WHERE
	1 = 0
LIMIT 2

