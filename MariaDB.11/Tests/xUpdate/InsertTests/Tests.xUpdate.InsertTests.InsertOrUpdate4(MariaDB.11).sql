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
;
SELECT
	LAST_INSERT_ID() as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 5
DECLARE @diagnosis Int32
SET     @diagnosis = 3
DECLARE @i Int32
SET     @i = 0

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	CAST(@diagnosis + @i AS CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = CAST(CHAR_LENGTH(`Diagnosis`) + @i AS CHAR(11))

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 5
DECLARE @diagnosis Int32
SET     @diagnosis = 3
DECLARE @i Int32
SET     @i = 1

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	CAST(@diagnosis + @i AS CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = CAST(CHAR_LENGTH(`Diagnosis`) + @i AS CHAR(11))

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 5
DECLARE @diagnosis Int32
SET     @diagnosis = 3
DECLARE @i Int32
SET     @i = 2

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	CAST(@diagnosis + @i AS CHAR(11))
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = CAST(CHAR_LENGTH(`Diagnosis`) + @i AS CHAR(11))

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
LIMIT 2

