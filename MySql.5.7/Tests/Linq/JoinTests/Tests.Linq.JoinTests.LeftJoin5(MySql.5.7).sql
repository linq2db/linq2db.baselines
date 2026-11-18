-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`,
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `ch` ON `p`.`ParentID` = `ch`.`ParentID`
WHERE
	`ch`.`ParentID` IS NULL

