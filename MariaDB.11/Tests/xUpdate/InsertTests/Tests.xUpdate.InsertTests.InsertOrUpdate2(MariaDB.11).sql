BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'test'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'subject'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 5

INSERT IGNORE INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	'negative'
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 5

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 5

INSERT IGNORE INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	'positive'
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 5

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id

