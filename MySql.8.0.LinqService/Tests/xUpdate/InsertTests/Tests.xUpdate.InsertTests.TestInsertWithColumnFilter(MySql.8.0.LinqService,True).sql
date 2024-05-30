BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @newName VarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` = @newName

