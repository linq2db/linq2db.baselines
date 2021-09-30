BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	LOCATE('J', `p`.`FirstName`) = 1 AND (`p`.`PersonID` = 1 OR `p`.`LastName` = 'fail')
LIMIT @take

