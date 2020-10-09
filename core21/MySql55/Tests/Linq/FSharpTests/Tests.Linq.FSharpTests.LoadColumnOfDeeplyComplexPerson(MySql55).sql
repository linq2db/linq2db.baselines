BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1
DECLARE @take Int32
SET     @take = 2

SELECT 
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @ID
LIMIT @take

