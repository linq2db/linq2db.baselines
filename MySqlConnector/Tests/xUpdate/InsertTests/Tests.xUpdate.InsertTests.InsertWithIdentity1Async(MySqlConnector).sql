BeforeExecute
-- MySqlConnector MySql

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` > 4

BeforeExecute
-- MySqlConnector MySql (asynchronously)

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

BeforeExecute
-- MySqlConnector MySql (asynchronously)

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql (asynchronously)

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

BeforeExecute
-- MySqlConnector MySql

DELETE   `_`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` > 4

