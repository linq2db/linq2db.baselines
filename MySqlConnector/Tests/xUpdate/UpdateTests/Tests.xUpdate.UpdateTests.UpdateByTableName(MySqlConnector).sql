﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `xxPerson`

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`xxPerson` `t1`

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'None'
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	`xxPerson` `t1`
SET
	`t1`.`FirstName` = @FirstName,
	`t1`.`LastName` = @LastName,
	`t1`.`MiddleName` = @MiddleName,
	`t1`.`Gender` = @Gender
WHERE
	`t1`.`PersonID` = @ID

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

DROP TABLE `xxPerson`

