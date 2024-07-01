BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
	(Locate(@p, `p`.`LastName`) <> 0 OR Locate(@p, `p`.`LastName`) IS NULL) AND
	`p`.`PersonID` = 1

