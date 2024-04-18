BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
LIMIT @take

