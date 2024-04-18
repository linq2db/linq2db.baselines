BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `t`
		INNER JOIN `Child` `c_1` ON `t`.`ParentID` = `c_1`.`ParentID`
WHERE
	`c_1`.`ParentID` = 1

