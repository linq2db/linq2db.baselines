BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`a_Child`.`ParentID`, 
	`a_Child`.`ChildID`
FROM
	( 
		SELECT DISTINCT 
			`p`.`ParentID`, 
			`p`.`Value1`
		FROM
			`Parent` `p`
				INNER JOIN `GrandChild` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
		WHERE
			`p`.`ParentID` = 1
	) `p_1`
		INNER JOIN `GrandChild` `g_1` ON `p_1`.`ParentID` = `g_1`.`ParentID`
		LEFT JOIN `Child` `a_Child` ON `g_1`.`ParentID` = `a_Child`.`ParentID` AND `g_1`.`ChildID` = `a_Child`.`ChildID`
WHERE
	`p_1`.`ParentID` = `g_1`.`ParentID`

