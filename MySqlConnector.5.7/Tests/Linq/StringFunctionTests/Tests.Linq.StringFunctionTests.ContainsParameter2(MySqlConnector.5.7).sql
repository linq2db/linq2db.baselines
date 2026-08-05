-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @str VarChar(3) -- String
SET     @str = 'o%h'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	LOCATE(@str, `p`.`FirstName`) <= 0 AND `p`.`PersonID` = 1

