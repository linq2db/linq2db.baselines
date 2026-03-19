-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `t1`,
	`Child` `ch`
WHERE
	`t1`.`ParentID` = `ch`.`ParentID`

