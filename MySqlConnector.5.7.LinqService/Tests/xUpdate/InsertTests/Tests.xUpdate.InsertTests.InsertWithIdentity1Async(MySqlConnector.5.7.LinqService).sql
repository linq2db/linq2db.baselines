BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

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
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT LAST_INSERT_ID()

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

