BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

DROP TABLE IF EXISTS `xxPerson`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

CREATE TABLE `xxPerson`
(
	`FirstName`  VARCHAR(4000)                NOT NULL,
	`PersonID`   INT           AUTO_INCREMENT NOT NULL,
	`LastName`   VARCHAR(4000)                NOT NULL,
	`MiddleName` VARCHAR(4000)                    NULL,
	`Gender`     CHAR                         NOT NULL,

	CONSTRAINT `PK_xxPerson` PRIMARY KEY CLUSTERED (`PersonID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`xxPerson` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`xxPerson` `t1`
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @ID Int32
SET     @ID = 1

DELETE  
FROM
	`xxPerson`
WHERE
	`xxPerson`.`PersonID` = @ID

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`xxPerson` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

DROP TABLE `xxPerson`

