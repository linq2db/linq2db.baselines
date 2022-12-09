BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`,
	`c_1`.`GrandChildID`,
	`a_Child_1`.`ParentID`,
	`a_Child_1`.`ChildID`,
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`GrandChild` `p`
		LEFT JOIN `Child` `a_Child` ON `p`.`ParentID` = `a_Child`.`ParentID` AND `p`.`ChildID` = `a_Child`.`ChildID`
		INNER JOIN (`GrandChild` `c_1`
			LEFT JOIN `Child` `a_Child_1` ON `c_1`.`ParentID` = `a_Child_1`.`ParentID` AND `c_1`.`ChildID` = `a_Child_1`.`ChildID`)
		ON (`a_Child`.`ParentID` = `c_1`.`ParentID` OR `a_Child`.`ParentID` IS NULL AND `c_1`.`ParentID` IS NULL) AND (`a_Child`.`ChildID` = `c_1`.`ChildID` OR `a_Child`.`ChildID` IS NULL AND `c_1`.`ChildID` IS NULL)
		LEFT JOIN `Parent` `a_Parent` ON `a_Child_1`.`ParentID` = `a_Parent`.`ParentID`
LIMIT @take

