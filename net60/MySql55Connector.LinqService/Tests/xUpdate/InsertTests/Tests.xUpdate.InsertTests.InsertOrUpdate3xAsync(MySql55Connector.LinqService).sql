BeforeExecute
-- MySql55Connector MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `p`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'John' AND `p`.`LastName` = 'Shepard'

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)

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
-- MySql55Connector MySqlConnector MySql (asynchronously)

SELECT LAST_INSERT_ID()

