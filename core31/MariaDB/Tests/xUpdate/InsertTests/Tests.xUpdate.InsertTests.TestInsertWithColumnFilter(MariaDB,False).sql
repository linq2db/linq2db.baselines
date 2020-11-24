BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @FirstName_1 VarChar(18) -- String
SET     @FirstName_1 = 'InsertColumnFilter'
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = @FirstName_1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @newName VarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE `x`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = @newName

