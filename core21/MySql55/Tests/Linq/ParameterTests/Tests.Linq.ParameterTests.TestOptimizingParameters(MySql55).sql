BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @id Int32
SET     @id = 1

SELECT 
	Count(*)
FROM
	`Person` `_`
WHERE
	((`_`.`PersonID` = @id OR `_`.`PersonID` <= @id) OR `_`.`PersonID` = @id)

