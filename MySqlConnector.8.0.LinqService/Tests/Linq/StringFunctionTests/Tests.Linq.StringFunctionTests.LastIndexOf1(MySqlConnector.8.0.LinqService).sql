BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p VarChar(1) -- String
SET     @p = 'p'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Char_Length(`p`.`LastName`) - Locate('p', Reverse(`p`.`LastName`)) = 2 AND
	Locate(@p, `p`.`LastName`) <> 0 AND `p`.`PersonID` = 1

