BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `TestInsertOrReplaceTable`
(
	`ID`         INT          NOT NULL,
	`FirstName`  VARCHAR(255)     NULL,
	`LastName`   VARCHAR(255)     NULL,
	`MiddleName` VARCHAR(255)     NULL,

	CONSTRAINT `PK_TestInsertOrReplaceTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`TestInsertOrReplaceTable` `x`
WHERE
	`x`.`ID` = 123 AND `x`.`FirstName` = 'John'

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TestInsertOrReplaceTable`

