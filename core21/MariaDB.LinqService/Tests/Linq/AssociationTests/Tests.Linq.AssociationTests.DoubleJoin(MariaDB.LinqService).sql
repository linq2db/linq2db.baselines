BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`g_1`.`ParentID`,
	`g_1`.`ChildID`,
	`g_1`.`GrandChildID`
FROM
	`GrandChild` `g_1`
		LEFT JOIN (
			SELECT
				`a_Parent`.`Value1`,
				`t1`.`ParentID`,
				`t1`.`ChildID`
			FROM
				`Child` `t1`
					LEFT JOIN `Parent` `a_Parent` ON `t1`.`ParentID` = `a_Parent`.`ParentID`
		) `a_Child` ON `g_1`.`ParentID` = `a_Child`.`ParentID` AND `g_1`.`ChildID` = `a_Child`.`ChildID`
WHERE
	`a_Child`.`Value1` = 1

