-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FirstName VarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

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

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` = 'test_inherited_insert'
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FirstName VarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'U'
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` = 'test_inherited_insert'
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int32
SET     @ID = 5

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` = @ID

