﻿BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `xxPerson`
(
	`FirstName`  VARCHAR(255)                NOT NULL,
	`PersonID`   INT          AUTO_INCREMENT NOT NULL,
	`LastName`   VARCHAR(255)                NOT NULL,
	`MiddleName` VARCHAR(255)                    NULL,
	`Gender`     CHAR                        NOT NULL,

	CONSTRAINT `PK_xxPerson` PRIMARY KEY CLUSTERED (`PersonID`)
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`xxPerson` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`xxPerson` `t1`
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1

DELETE   `t1`
FROM
	`xxPerson` `t1`
WHERE
	`t1`.`PersonID` = @ID

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`xxPerson` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `xxPerson`

