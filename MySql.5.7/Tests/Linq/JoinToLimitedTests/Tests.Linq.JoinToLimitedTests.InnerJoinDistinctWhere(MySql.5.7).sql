BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Parent` `o`
		INNER JOIN (
			SELECT DISTINCT
				`t1`.`ParentID`,
				`t1`.`ChildID`
			FROM
				`Child` `t1`
		) `x` ON `x`.`ParentID` = `o`.`ParentID`

