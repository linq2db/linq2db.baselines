BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @n Int32
SET     @n = 2

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND NOT (`p`.`MiddleName` IS NOT NULL AND `p`.`PersonID` = @n)

