-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `t1`,
	`Child` `ch`
WHERE
	`t1`.`ParentID` = `ch`.`ParentID`

