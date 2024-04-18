BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
LIMIT @take

