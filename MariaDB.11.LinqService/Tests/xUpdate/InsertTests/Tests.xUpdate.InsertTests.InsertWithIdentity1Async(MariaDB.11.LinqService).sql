BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

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
--  MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT LAST_INSERT_ID()

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

