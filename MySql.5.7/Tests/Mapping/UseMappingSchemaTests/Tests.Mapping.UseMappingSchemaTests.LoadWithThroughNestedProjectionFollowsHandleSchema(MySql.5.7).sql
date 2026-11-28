-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`ParentID`,
	`r`.`Value1`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`,
	`a_Parent`.`ParentID`
FROM
	`Parent` `r`
		INNER JOIN `Child` `c_1` ON `r`.`ParentID` = `c_1`.`ParentID`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`

