﻿BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `xxPerson`

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`xxPerson` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`xxPerson` `p`
WHERE
	`p`.`FirstName` = 'Steven' AND `p`.`LastName` = 'King' AND
	`p`.`Gender` = 'M'

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `xxPerson`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `xxPerson`

