-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

-- MariaDB.11 MariaDB.10.MySqlConnector
-- Batch 1
-- FirstName = John
-- LastName = Shepard
-- Gender = M
INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
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

