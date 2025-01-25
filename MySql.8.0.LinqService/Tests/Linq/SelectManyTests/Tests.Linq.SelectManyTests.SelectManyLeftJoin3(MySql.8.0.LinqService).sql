BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `ch` ON 1=1
WHERE
	`t1`.`ParentID` = `ch`.`ParentID`

