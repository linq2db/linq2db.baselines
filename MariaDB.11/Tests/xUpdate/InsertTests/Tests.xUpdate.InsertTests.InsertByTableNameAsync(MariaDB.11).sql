-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `xxPerson`
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

-- MariaDB.11 MariaDB.10.MySqlConnector
-- Batch 1
-- FirstName = Steven
-- LastName = King
-- MiddleName = NULL
-- Gender = M
INSERT INTO `xxPerson`
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
-- MariaDB.11 MariaDB.10.MySqlConnector
-- Batch 1
-- FirstName = Steven
-- LastName = King
-- MiddleName = NULL
-- Gender = M
INSERT INTO `xxPerson`
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

SELECT
	COUNT(*)
FROM
	`xxPerson` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`xxPerson` `p`
WHERE
	`p`.`FirstName` = 'Steven' AND `p`.`LastName` = 'King' AND
	`p`.`Gender` = 'M'

