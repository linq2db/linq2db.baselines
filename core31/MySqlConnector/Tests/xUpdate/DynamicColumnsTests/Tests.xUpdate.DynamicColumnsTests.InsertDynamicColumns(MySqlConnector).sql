BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`LastName` = 'The Dynamic'

