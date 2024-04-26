BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

