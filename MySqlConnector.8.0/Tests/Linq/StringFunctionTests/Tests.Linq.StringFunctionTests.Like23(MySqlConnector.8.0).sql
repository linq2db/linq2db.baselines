-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @pattern VarChar(6) -- String
SET     @pattern = '%h~%n%'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` NOT LIKE @pattern ESCAPE '~' AND `p`.`PersonID` = 1

