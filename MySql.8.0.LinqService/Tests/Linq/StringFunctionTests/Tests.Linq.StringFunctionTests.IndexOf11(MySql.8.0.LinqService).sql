BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p VarChar(2) -- String
SET     @p = 'oh'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Locate(@p, `p`.`FirstName`) - 1 = 1 AND `p`.`PersonID` = 1

