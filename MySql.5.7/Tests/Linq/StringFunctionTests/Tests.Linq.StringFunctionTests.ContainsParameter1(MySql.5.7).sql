-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @str VarChar(2) -- String
SET     @str = 'oh'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	LOCATE(@str, `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

