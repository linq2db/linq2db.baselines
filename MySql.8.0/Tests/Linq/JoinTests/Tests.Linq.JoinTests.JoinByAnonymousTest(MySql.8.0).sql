BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `p`
		INNER JOIN (`Child` `c_1`
			LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`)
		ON `p`.`ParentID` = `a_Parent`.`ParentID` AND (`p`.`Value1` = `a_Parent`.`Value1` OR `p`.`Value1` IS NULL AND `a_Parent`.`Value1` IS NULL) AND `p`.`ParentID` = `c_1`.`ParentID`

