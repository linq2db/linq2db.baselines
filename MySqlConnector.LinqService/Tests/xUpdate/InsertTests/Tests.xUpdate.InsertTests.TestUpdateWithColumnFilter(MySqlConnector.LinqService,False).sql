﻿BeforeExecute
-- MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySqlConnector MySql
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `Person`
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
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = @FirstName
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`Person` `t1`
SET
	`t1`.`FirstName` = @FirstName,
	`t1`.`LastName` = @LastName,
	`t1`.`Gender` = @Gender
WHERE
	`t1`.`PersonID` = @ID

BeforeExecute
-- MySqlConnector MySql
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = @FirstName
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @newName VarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE   `x`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = @newName

