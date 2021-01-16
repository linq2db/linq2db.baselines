BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `TestInsertOrReplaceTable`
(
	`ID`         INT          NOT NULL,
	`FirstName`  VARCHAR(255)     NULL,
	`LastName`   VARCHAR(255)     NULL,
	`MiddleName` VARCHAR(255)     NULL,

	CONSTRAINT `PK_TestInsertOrReplaceTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'

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
-- MySqlConnector MySql
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
-- MySqlConnector MySql

DROP TABLE `TestInsertOrReplaceTable`

