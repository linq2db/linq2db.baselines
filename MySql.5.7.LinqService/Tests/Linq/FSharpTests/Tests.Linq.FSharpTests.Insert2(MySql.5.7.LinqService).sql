BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	MAX(`t1`.`PersonID`)
FROM
	`Person` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Gender VarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = ''
DECLARE @Name_LastName VarChar(2) -- String
SET     @Name_LastName = 'ln'

INSERT INTO `Person`
(
	`Gender`,
	`FirstName`,
	`MiddleName`,
	`LastName`
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`MiddleName`,
	`p`.`LastName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` > 4
LIMIT 2

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

