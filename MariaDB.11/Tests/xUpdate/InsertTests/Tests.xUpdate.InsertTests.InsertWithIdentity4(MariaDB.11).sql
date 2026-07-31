-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

-- MariaDB.11 MariaDB.10.MySqlConnector
-- Batch 1
-- FirstName = John0
-- LastName = Shepard
-- MiddleName = NULL
-- Gender = M
INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p VarChar(5) -- String
SET     @p = 'John0'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @p AND `p`.`LastName` = 'Shepard'
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector
-- Batch 1
-- FirstName = John1
-- LastName = Shepard
-- MiddleName = NULL
-- Gender = M
INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p VarChar(5) -- String
SET     @p = 'John1'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @p AND `p`.`LastName` = 'Shepard'
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

