-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT LAST_INSERT_ID()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'John' AND `p`.`LastName` = 'Shepard'
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

