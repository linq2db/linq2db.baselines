-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT LAST_INSERT_ID()

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'John' AND `p`.`LastName` = 'Shepard'
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

