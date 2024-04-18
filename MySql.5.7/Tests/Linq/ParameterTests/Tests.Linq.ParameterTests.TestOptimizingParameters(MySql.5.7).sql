BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	((`_`.`PersonID` = @id OR `_`.`PersonID` <= @id) OR `_`.`PersonID` = @id)

