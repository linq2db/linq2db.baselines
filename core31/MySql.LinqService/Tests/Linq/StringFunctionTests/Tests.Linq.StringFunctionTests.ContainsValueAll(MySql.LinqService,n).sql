BeforeExecute
-- MySql MySql.Official MySql
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND @s LIKE '%n%' ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @s2 VarChar(7) -- String
SET     @s2 = '123N456'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND @s2 LIKE '%n%' ESCAPE '~'

