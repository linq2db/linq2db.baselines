﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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

