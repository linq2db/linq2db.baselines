BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
DECLARE @newName VarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE `x`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = @newName

