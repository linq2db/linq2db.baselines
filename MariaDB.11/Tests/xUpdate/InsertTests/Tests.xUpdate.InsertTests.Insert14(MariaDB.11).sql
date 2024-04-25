BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `p`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
	)),
	'Shepard',
	'M'
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `p`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

