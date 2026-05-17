-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id OR `t1`.`PersonID` <= @id

