﻿BeforeExecute
-- MySql55 MySql.Official MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(12) -- String
SET     @MiddleName = 'updated name'
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`Person` `t1`
SET
	`t1`.`FirstName` = @FirstName,
	`t1`.`LastName` = @LastName,
	`t1`.`MiddleName` = @MiddleName,
	`t1`.`Gender` = @Gender
WHERE
	`t1`.`PersonID` = @ID

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @newName VarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE `x`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = @newName

