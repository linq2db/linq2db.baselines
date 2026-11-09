-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`o`.`PersonID`,
	`o`.`Gender`
FROM
	`Person` `o`
WHERE
	`o`.`PersonID` IN (1, 2, 3, 4)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`o`.`PersonID`,
	`o`.`Gender`
FROM
	`Person` `o`
WHERE
	`o`.`PersonID` IN (1, 2, 3, 4)

