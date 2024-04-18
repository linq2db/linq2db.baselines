BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`,
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `t1` ON `p`.`ParentID` = `t1`.`ParentID`
WHERE
	`p`.`ParentID` >= 4

