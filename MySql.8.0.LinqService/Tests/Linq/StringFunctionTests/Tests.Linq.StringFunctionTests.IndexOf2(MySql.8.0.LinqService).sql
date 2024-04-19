BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p VarChar(1) -- String
SET     @p = 'e'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Locate(@p, `p`.`LastName`, 3) - 1 = 4 AND `p`.`PersonID` = 2

