BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `ch`
WHERE
	`p`.`ParentID` = `ch`.`ParentID`

