BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @id Int32
SET     @id = 10

SELECT
	`x`.`ChildID`
FROM
	`Child` `x`
WHERE
	`x`.`ChildID` = @id
LIMIT 1

