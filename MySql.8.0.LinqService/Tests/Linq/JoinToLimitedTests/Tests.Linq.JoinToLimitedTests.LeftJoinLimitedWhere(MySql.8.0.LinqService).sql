BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `o`
		LEFT JOIN (
			SELECT
				`x`.`ParentID`,
				`x`.`ChildID`
			FROM
				`Child` `x`
			ORDER BY
				`x`.`ChildID` DESC
			LIMIT 1
		) `c_1` ON `c_1`.`ParentID` = `o`.`ParentID`

