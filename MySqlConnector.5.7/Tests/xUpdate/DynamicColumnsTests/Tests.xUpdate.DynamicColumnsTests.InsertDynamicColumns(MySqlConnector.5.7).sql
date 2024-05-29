BeforeExecute
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
	'The Dynamic',
	'M'
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`FirstName` = 'John' AND `c_1`.`LastName` = 'The Dynamic'

