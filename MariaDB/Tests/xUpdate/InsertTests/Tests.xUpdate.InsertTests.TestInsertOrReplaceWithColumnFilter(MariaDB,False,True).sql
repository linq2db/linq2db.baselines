﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TestInsertOrReplaceTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestInsertOrReplaceTable`
(
	`ID`         INT           NOT NULL,
	`FirstName`  VARCHAR(4000)     NULL,
	`LastName`   VARCHAR(4000)     NULL,
	`MiddleName` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TestInsertOrReplaceTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	`x`.`ID`,
	`x`.`FirstName`,
	`x`.`LastName`,
	`x`.`MiddleName`
FROM
	`TestInsertOrReplaceTable` `x`
WHERE
	`x`.`FirstName` = @FirstName
LIMIT 1

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	`x`.`ID`,
	`x`.`FirstName`,
	`x`.`LastName`,
	`x`.`MiddleName`
FROM
	`TestInsertOrReplaceTable` `x`
WHERE
	`x`.`FirstName` = @FirstName
LIMIT 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TestInsertOrReplaceTable`

