BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int32
SET     @ID = 1

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`MiddleName`,
	`p`.`LastName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @ID
LIMIT 2

