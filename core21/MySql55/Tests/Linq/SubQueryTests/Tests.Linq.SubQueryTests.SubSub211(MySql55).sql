BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			`Child` `c_1`
				INNER JOIN `GrandChild` `g_1` ON `c_1`.`ParentID` = `g_1`.`ParentID` AND `c_1`.`ChildID` = `g_1`.`ChildID`
		WHERE
			`g_1`.`ParentID` + 1 < `p1`.`ID` AND `g_1`.`ParentID` + 1 < `p1`.`ID` AND
			`p1`.`ParentID` = `c_1`.`ParentID`
	)
FROM
	( 
		SELECT 
			`p3`.`ID` + 1 as `ID`, 
			`p3`.`ParentID`
		FROM
			( 
				SELECT 
					`p2`.`ParentID` + 1 as `ID`, 
					`p2`.`ParentID`
				FROM
					`Parent` `p2`
			) `p3`
		WHERE
			`p3`.`ID` > 0
	) `p1`
WHERE
	`p1`.`ID` > 0

