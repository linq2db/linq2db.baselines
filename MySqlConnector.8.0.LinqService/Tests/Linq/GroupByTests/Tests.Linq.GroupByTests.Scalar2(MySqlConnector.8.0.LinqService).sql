BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Max(`t1`.`ChildID`),
	Max(`t1`.`ChildID` + `t1`.`ParentID`)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

