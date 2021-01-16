BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	Concat('Insert14', (
		SELECT
			`p`.`FirstName`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
		LIMIT @take
	)),
	'Shepard',
	'M'
)

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

