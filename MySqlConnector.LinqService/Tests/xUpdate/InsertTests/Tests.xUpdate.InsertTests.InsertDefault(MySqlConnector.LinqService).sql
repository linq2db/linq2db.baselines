BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Person`
(
	`FirstName`,
	`MiddleName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'InsertDefault',
	DEFAULT,
	'InsertDefault',
	'M'
)

BeforeExecute
-- MySqlConnector MySql

DELETE   `p`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'InsertDefault'

