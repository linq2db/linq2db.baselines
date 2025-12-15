-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT LAST_INSERT_ID()

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

