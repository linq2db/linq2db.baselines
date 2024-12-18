BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TestInsertOrReplaceTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestInsertOrReplaceTable`
(
	`ID`         INT           NOT NULL,
	`FirstName`  VARCHAR(4000)     NULL,
	`LastName`   VARCHAR(4000)     NULL,
	`MiddleName` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TestInsertOrReplaceTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 123
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'

INSERT INTO `TestInsertOrReplaceTable`
(
	`ID`,
	`FirstName`
)
VALUES
(
	@ID,
	@FirstName
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`TestInsertOrReplaceTable` `x`
WHERE
	`x`.`ID` = 123 AND `x`.`FirstName` = 'John' AND `x`.`FirstName` IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TestInsertOrReplaceTable`

