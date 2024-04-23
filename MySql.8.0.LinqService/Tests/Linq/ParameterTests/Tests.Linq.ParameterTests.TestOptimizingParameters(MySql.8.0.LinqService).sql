BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	`Person` `_`
WHERE
	(`_`.`PersonID` = @id OR `_`.`PersonID` <= @id OR `_`.`PersonID` = @id)

