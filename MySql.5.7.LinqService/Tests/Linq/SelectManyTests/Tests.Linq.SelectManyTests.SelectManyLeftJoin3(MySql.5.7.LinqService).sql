BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `ch` ON 1=1
WHERE
	`p`.`ParentID` = `ch`.`ParentID`

