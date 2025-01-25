BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 1

SELECT
	`obj`.`PersonID`,
	`obj`.`FirstName`,
	`obj`.`LastName`,
	`obj`.`MiddleName`,
	`obj`.`Gender`
FROM
	`Person` `obj`
WHERE
	`obj`.`PersonID` = @id
LIMIT 2

