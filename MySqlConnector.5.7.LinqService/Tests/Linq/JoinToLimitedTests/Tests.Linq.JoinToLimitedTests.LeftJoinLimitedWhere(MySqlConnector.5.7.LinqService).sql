BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 1

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Parent` `o`
		LEFT JOIN (
			SELECT
				`t1`.`ParentID`,
				`t1`.`ChildID`
			FROM
				`Child` `t1`
			LIMIT @take
		) `x` ON `x`.`ParentID` = `o`.`ParentID`

