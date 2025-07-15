BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'John' OR `p`.`LastName` = 'John'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @firstName VarChar(4) -- String
SET     @firstName = 'John'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @firstName OR `p`.`LastName` = @firstName
LIMIT 2

