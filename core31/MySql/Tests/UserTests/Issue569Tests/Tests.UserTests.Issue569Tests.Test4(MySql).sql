BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Parent` `parent_1`,
	(
		SELECT
			`child_1`.`ParentID`,
			`child_1`.`ChildID`,
			`parent_2`.`ParentID` as `ParentID_1`
		FROM
			`Parent` `parent_2`,
			`Child` `child_1`
	) `s`
		LEFT JOIN `GrandChild` `t1` ON `s`.`ParentID` = `t1`.`ParentID` AND `s`.`ChildID` = `t1`.`ChildID`

