-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `t1`,
	`Child` `ch`
WHERE
	`t1`.`ParentID` = `ch`.`ParentID`

