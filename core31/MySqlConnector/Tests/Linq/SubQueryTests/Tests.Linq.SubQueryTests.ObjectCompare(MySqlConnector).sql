BeforeExecute
-- MySqlConnector MySql

SELECT 
	`p`.`ParentID`, 
	`c_2`.`ChildID`
FROM
	`Parent` `p`,
	( 
		SELECT 
			`c_1`.`ChildID` + 1 as `ChildID`, 
			`a_Parent`.`ParentID`, 
			`a_Parent`.`Value1`
		FROM
			`Child` `c_1`
				LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
	) `c_2`
WHERE
	(`p`.`ParentID` = `c_2`.`ParentID` AND (`p`.`Value1` IS NULL AND `c_2`.`Value1` IS NULL OR `p`.`Value1` = `c_2`.`Value1`)) AND
	`c_2`.`ChildID` > 0

