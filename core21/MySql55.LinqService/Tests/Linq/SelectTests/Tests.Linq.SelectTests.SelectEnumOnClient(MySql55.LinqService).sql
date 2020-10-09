BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`person_1`.`PersonID`
FROM
	`Person` `person_1`
LIMIT @take

