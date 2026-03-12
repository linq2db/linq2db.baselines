-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`ParentID`,
	`g_1`.`GrandChildID`
FROM
	`Child` `c_1`
		INNER JOIN (`GrandChild` `g_1`
			LEFT JOIN `Child` `a_Child` ON `g_1`.`ParentID` = `a_Child`.`ParentID` AND `g_1`.`ChildID` = `a_Child`.`ChildID`)
		ON `c_1`.`ParentID` = `a_Child`.`ParentID` AND `c_1`.`ChildID` = `a_Child`.`ChildID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`ParentID`,
	`g_1`.`GrandChildID`
FROM
	`Child` `c_1`
		INNER JOIN (`GrandChild` `g_1`
			LEFT JOIN `Child` `a_Child` ON `g_1`.`ParentID` = `a_Child`.`ParentID` AND `g_1`.`ChildID` = `a_Child`.`ChildID`)
		ON `c_1`.`ParentID` = `a_Child`.`ParentID` AND `c_1`.`ChildID` = `a_Child`.`ChildID`

