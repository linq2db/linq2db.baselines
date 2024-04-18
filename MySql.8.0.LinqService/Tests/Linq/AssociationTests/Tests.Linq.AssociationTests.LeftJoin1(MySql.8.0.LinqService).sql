BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`p`.`Value1`,
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `t1` ON `p`.`ParentID` = `t1`.`ParentID`
WHERE
	`p`.`ParentID` >= 4

