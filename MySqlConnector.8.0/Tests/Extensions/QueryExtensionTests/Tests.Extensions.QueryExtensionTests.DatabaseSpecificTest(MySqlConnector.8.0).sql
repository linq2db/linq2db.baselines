-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ MAX_EXECUTION_TIME(1000) */
	`t`.`ParentID`,
	`t`.`ChildID`
FROM
	`Child` `t` USE INDEX(IX_ChildIndex)

