-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FirstName VarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName VarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender VarChar(1) -- String
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT LAST_INSERT_ID()

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 5

SELECT
	`t`.`PersonID`,
	`t`.`FirstName`,
	`t`.`LastName`,
	`t`.`MiddleName`,
	`t`.`Gender`
FROM
	`Person` `t`
WHERE
	`t`.`PersonID` = @id
LIMIT 1

