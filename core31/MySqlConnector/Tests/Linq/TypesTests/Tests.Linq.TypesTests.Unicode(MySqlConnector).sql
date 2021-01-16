BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

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
	'擊敗奴隸',
	'Юникодкин',
	'M'
)

BeforeExecute
-- MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

