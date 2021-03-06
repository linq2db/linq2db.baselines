﻿BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `TestInsertOrReplaceTable`
(
	`ID`         INT          NOT NULL,
	`FirstName`  VARCHAR(255)     NULL,
	`LastName`   VARCHAR(255)     NULL,
	`MiddleName` VARCHAR(255)     NULL,

	CONSTRAINT `PK_TestInsertOrReplaceTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'

INSERT INTO `TestInsertOrReplaceTable`
(
	`ID`,
	`FirstName`,
	`LastName`
)
VALUES
(
	@ID,
	@FirstName,
	@LastName
)
ON DUPLICATE KEY UPDATE
	`FirstName` = @FirstName,
	`LastName` = @LastName

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @FirstName_1 VarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`ID`,
	`x`.`FirstName`,
	`x`.`LastName`,
	`x`.`MiddleName`
FROM
	`TestInsertOrReplaceTable` `x`
WHERE
	`x`.`FirstName` = @FirstName_1
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(12) -- String
SET     @MiddleName = 'updated name'

INSERT INTO `TestInsertOrReplaceTable`
(
	`ID`,
	`FirstName`,
	`LastName`,
	`MiddleName`
)
VALUES
(
	@ID,
	@FirstName,
	@LastName,
	@MiddleName
)
ON DUPLICATE KEY UPDATE
	`FirstName` = @FirstName,
	`LastName` = @LastName,
	`MiddleName` = @MiddleName

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @FirstName_1 VarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`ID`,
	`x`.`FirstName`,
	`x`.`LastName`,
	`x`.`MiddleName`
FROM
	`TestInsertOrReplaceTable` `x`
WHERE
	`x`.`FirstName` = @FirstName_1
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `TestInsertOrReplaceTable`

