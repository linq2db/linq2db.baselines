BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 10
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`ChildID`
FROM
	`Child` `x`
WHERE
	`x`.`ChildID` = @id
LIMIT @take

