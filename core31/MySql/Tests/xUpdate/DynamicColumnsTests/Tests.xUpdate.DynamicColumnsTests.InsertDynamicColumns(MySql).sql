BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`LastName` = 'The Dynamic'

