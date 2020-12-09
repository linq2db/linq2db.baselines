BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @param VarChar(4) -- String
SET     @param = 'john'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	(Upper(`p`.`FirstName`) = Upper(@param) OR Upper(`p`.`FirstName`) IS NULL AND Upper(@param) IS NULL) AND `p`.`PersonID` = 1

