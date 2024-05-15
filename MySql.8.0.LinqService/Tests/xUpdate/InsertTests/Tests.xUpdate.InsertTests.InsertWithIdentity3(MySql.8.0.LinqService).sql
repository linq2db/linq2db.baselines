BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

