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

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` = 'InsertDefault'

