BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

