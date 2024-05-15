BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

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
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'John' AND `p`.`LastName` = 'Shepard'
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

