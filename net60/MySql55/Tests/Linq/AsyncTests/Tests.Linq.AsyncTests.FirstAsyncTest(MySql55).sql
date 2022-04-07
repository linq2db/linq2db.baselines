BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT @take

