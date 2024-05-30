BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID` + 1
FROM
	`Parent` `p`,
	`Child` `t1`
WHERE
	`t1`.`ParentID` > 0

